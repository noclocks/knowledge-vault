---
creation_date: 2024-03-16
modification_date: 2024-03-16
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Idea
  - Topic/Dev/Obsidian
  - Topic/Obsidian
  - Topic/Obsidian/Plugin
  - Status/WIP
aliases:
  - Obsidian Vault Structure Switcher Plugin Idea Brainstorming
publish: true
permalink: areas/ideas/obsidian-vault-structure-switcher-plugin
description: "Idea note about a new Obsidian Plugin for switching the vaults underlying structure."
image:
cssclasses:
---

## Contents

```table-of-contents
style: nestedList
minLevel: 2
maxLevel: 10
includeLinks: true
debugInConsole: false
```

## Overview

> [!INFO]
> [[2024-03-16|Today]], I had an idea come to mind for a new [[Obsidian Plugin]] that I believe could offer some nice features: **Obsidian Vault Structure Switcher Plugin**.
 
This tool would cater to users with diverse organizational preferences, allowing them to adapt their workspace to their current needs or projects seamlessly. 

Here’s a step-by-step approach I took to flesh out my idea:

### Concept Development

#### 1. Define Structure Types

- **Flat Layout**: Minimal use of folders. Notes are primarily organized via tags, backlinks, and MOCs (Maps of Content).
- **PARA Method**: Projects, Areas, Resources, Archives. Plus an Inbox for unsorted notes.
- **Custom Structures**: Allow users to define and save their own structures, with presets for common workflows (e.g., Zettelkasten, GTD).

#### 2. User Interface and Interaction

- Easy-to-access switcher: A dropdown or a command palette option to switch between structures.
- Preview of structure changes: Before applying, show how the change will affect the current organization (number of notes moved, new folders created, etc.).
- Integration with the built-in [[Obsidian Workspaces Core Plugin]].

#### 3. Functionality

- **Dynamic Structure Switching**: Safely reorganize notes and folders without losing links or metadata.
- **Tagging and Metadata Update**: Adapt tags and metadata to fit the new structure.
- **Backlinks Update**: Ensure that backlinks remain valid and are updated to reflect structural changes.

### Technical Considerations

- **Data Integrity**: Ensure the switching process preserves all notes and links without data loss.
- **Undo Functionality**: Allow users to revert to the previous structure if the new one doesn’t meet their needs.
- **Performance**: Optimize for performance to handle large vaults efficiently.

### Advanced Features

- **Structure Templates**: Provide templates for popular organizational methods beyond PARA, like Zettelkasten or GTD.
- **Custom Rules**: Allow users to set custom rules for how notes are categorized or moved during the switch.
- **Integration with Other Plugins**: Ensure compatibility with popular plugins, enhancing the structural switch according to those plugins' features.

### Prototype Development

1. **Prototype the UI**: Start with mockups for the switcher interface and previews.
2. **Develop Basic Switching Logic**: Begin with the flat layout and PARA as they are distinct and cover a broad range of users' needs.
3. **User Testing**: Release an MVP to a small group of users for feedback on usability and functionality.

### Example Pseudocode

Here’s a simplified pseudocode example of switching to a flat layout:

```plaintext
function switchToFlatLayout(vault):
    folders = getFolders(vault)
    for folder in folders:
        if folder not in ["Templates", "Attachments"]:
            notes = getNotesInFolder(folder)
            for note in notes:
                moveNoteToRoot(note)
    updateLinksAndTags(vault)
    showMessage("Switched to Flat Layout")

function moveNoteToRoot(note):
    // Moves note to the root, updating paths and backlinks as necessary

function updateLinksAndTags(vault):
    // Updates all notes' links and tags based on the new structure
```

### Next Steps

- Start with designing the user interface and interactions.
- Develop a detailed plan for handling data safely during switches.
- Begin coding with a focus on the core functionality, starting with simpler structures.

This plugin would significantly enhance the flexibility and usability of Obsidian.md, catering to both users who thrive in a minimalist setup and those who prefer detailed organizational structures. 

***

## [[2024-03-16]] Updates:

I created an outline using the pseudocode about for the plugin. 

This plugin will allow users to switch between different note organization structures, such as a flat layout and one based on the PARA method.

We'll use TypeScript, considering Obsidian's plugin development environment.

1. **Plugin Initialization**:
   - Register the plugin with Obsidian.
   - Add command(s) for switching between structures.
   - Load user preferences if saved.

2. **Structure Definitions**:
   - Define each structure's characteristics, e.g., flat, PARA.
   - For PARA: Projects, Areas, Resources, Archives, Inbox.
   - For flat: Minimal folders, mainly rely on links and tags.

3. **Switching Logic**:
   - When a switch command is issued:
     - Confirm the action with the user to prevent accidental switches.
     - Determine the current structure.
     - Based on the target structure, rearrange notes and folders accordingly.

4. **Rearrangement Methods**:
   - Implement methods to move notes into the desired structure.
   - Use the Obsidian API to manipulate files and folders.
   - Update links if necessary to reflect new paths.

5. **User Preferences**:
   - Allow users to save their preferred structure or customizations.
   - Load these preferences on plugin startup.

6. **Error Handling**:
   - Ensure robust error handling throughout to deal with file access issues, permission problems, etc.

7. **UI Components**:
   - If necessary, develop UI components for settings or to facilitate structure switches.

8. **Testing and Documentation**:
   - Thoroughly test the plugin with different vault sizes and structures.
   - Document how to use the plugin, including any limitations or known issues.

Here is a simplified version of what the code's structure might look like in TypeScript, focusing on the plugin initialization and command registration aspects:

```typescript
import { Plugin, TFile } from 'obsidian';

interface StructureDefinition {
  name: string;
  description: string;
  applyStructure: (files: TFile[]) => Promise<void>;
}

class VaultStructureSwitcherPlugin extends Plugin {
  structures: StructureDefinition[] = [];

  async onload() {
    this.loadStructures();
    this.addCommand({
      id: 'switch-structure-to-para',
      name: 'Switch to PARA Structure',
      callback: () => this.switchStructure('PARA'),
    });

    this.addCommand({
      id: 'switch-structure-to-flat',
      name: 'Switch to Flat Structure',
      callback: () => this.switchStructure('Flat'),
    });

    // Load user preferences here
  }

  loadStructures() {
    // Define the structures here
  }

  async switchStructure(targetStructureName: string) {
    const targetStructure = this.structures.find(s => s.name === targetStructureName);
    if (!targetStructure) {
      // Handle error: Structure not found
      return;
    }

    // Confirm with user, then apply the structure
    const files = this.app.vault.getFiles();
    await targetStructure.applyStructure(files);
    // Post-switch logic, e.g., save preference, UI notification
  }
}

module.exports = () => new VaultStructureSwitcherPlugin();
```

This pseudocode outlines the basic structure of the plugin, focusing on initializing the plugin, defining structures, and implementing the logic to switch between them. 

The detailed implementation of each structure's rearrangement method (`applyStructure`) and other functionalities like user preferences, UI components, and error handling would require further development.

