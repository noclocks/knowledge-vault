---
creation_date: 2024-03-21
modification_date: 2024-03-21
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/NA
aliases:
  - Invoicing
publish: true
permalink:
description:
image:
cssclasses:
---

# Invoicing

Invoices provide an itemized list of goods and services rendered, which includes the cost, quantity, and taxes. You can send invoices to customers to collect payment or you can create an invoice and automatically charge a customer’s saved payment method. [Subscriptions](https://docs.stripe.com/docs/billing/subscriptions/creating "subscriptions") automatically generate invoices for each billing cycle. Learn more about the [invoice lifecycle for subscriptions](https://docs.stripe.com/billing/subscriptions/overview#invoice-lifecycle).

## Invoice Lifecycle

After they’re created manually or as part of a subscription, invoices move through a series of statuses as they’re created and processed. Stripe calls this the automatic collection workflow.

The basic lifecycle for invoices looks like this:

1. A newly created invoice has `draft` status.
2. Stripe [finalizes an invoice](https://docs.stripe.com/invoicing/integration/workflow-transitions#finalized) when it’s ready to be paid by changing its status to `open`. You can no longer change most details of a finalized invoice.
3. Stripe can wait for the customer to pay the invoice or automatically attempt to pay it using the customer’s default payment method.
    - If payment succeeds, Stripe updates the invoice status to `paid`.
    - If payment fails, the invoice remains `open`.
4. Optionally, you can change the status of an unpaid invoice to `void` or `uncollectible`.

You can [configure Stripe to send customer emails](https://docs.stripe.com/invoicing/send-email) at different stages of the invoice lifecycle, such as when it finalizes an invoice or when automatic payment fails.