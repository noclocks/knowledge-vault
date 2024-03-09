---
creation_date: 2024-02-29
modification_date: 2024-02-29
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/MOC
  - Topic/Python
aliases:
  - Python
  - Python Map of Content
  - Python MOC
publish: true
cssclasses:
---

## Agents

An **Agent** is a program or system that is designed to perform a specific task or set of tasks. Typically, an agent is a [[Large Language Model]] (LLM) that has access to a suite of data sources and tools and can decide which of them to use based on user input. One or many agents can power an AI Assistant.

Every Agent is equipped with a feature referred to as `memory`. This is a crucial component that allows the Agent to retain and recall information from its interactions. Memory can be thought of as the agent's short-term memory, storing recent inputs and outputs for reference during its current task. This enables the agent to maintain context and provide relevant responses or actions based on the information it has processed.

## Data Sources

Data sources can be both structured ([[CSV]], [[JSON]], etc.) and unstructured (PDF, TXT, [[Markdown]], etc.) and, depending on the data type, the agent will handle the data source differently.

In the case of unstructured data, the agent employs two different strategies: 

- Split and chunk the data into manageable pieces. These chunks are then ingested into a [[Vector Store]], such as [[Pinecone]], for efficient retrieval and usage.
- Alternatively, the chunked data can also be used for fine-tuning the language models specific to each Agent. This process enhances the Agent's ability to understand and respond to user queries more accurately and contextually.

### Data Source Types

- `PDF`
- `TXT`
- `CSV`
- `Markdown`
- `PPTX`
- `DOCX`
- `XLSX`
- `YOUTUBE`
- `WEBPAGE`
- `SITEMAP`
- `URL`
- `GITHUB_REPOSITORY`

## Tools - Third Party Services & APIs

Various tools can be attached to an Agent.

These tools can range from [[ChatGPT]] Plugins to external [[API]]s. The purpose of these tools is to enhance the functionality and versatility of the Agent. For instance, a [[ChatGPT]] Plugin could be used to improve the conversational abilities of the Agent, while an external [[API]] could provide the Agent with access to a specific dataset or service. The process of attaching a tool to an Agent is straightforward and flexible, allowing users to customize their Agents to best suit their needs.

## Workflows

Workflows consist of a sequence of Agents that run in a specific order. Each Agent in the workflow has access to its own specific data sources and tools, allowing it to perform its designated task. The output from one Agent is passed on to the next in the sequence, creating a chain of information processing and action. This allows for complex tasks to be broken down into manageable parts, each handled by a specialized Agent. The flexibility of workflows enables the creation of sophisticated systems capable of handling a wide range of tasks.

## Large Language Models (LLMs)

Language models are the core computational models that power the functionality of an Agent, the nuclear power plant of an Agent. They are trained on vast amounts of text data and learn to predict the likelihood of a sentence or to generate a piece of text that follows a given input. Language models are used to understand and generate human-like text based on the user's input and the context provided by the Agent's memory, data sources, and tools. These models are the driving force behind the Agent's ability to engage in meaningful and contextually relevant interactions with the user.

## Vector Databases

- [[Pinecone]]
- [[Astra DB]]
- [[Weaviate]]
- [[Qdrant]]
- [[Supabase]]
- [[PostgreSQL - pgVector]]

## Tracing & Observability

- [[Langfuse]]
- [[LangSmith]]
