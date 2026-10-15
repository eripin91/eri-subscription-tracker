# Subscription Tracker

Personal subscription and recurring-obligation tracker that grows into multi-user SaaS. Each user privately tracks their own obligations.

## Language

**Subscription**:
A recurring payment or transfer a user must make, with a cycle and next due date.
_Avoid_: Bill, recurring bill, payment, transfer, obligation as entity name

**Property**:
An optional grouping for subscriptions, such as an apartment, house, or personal bucket.
_Avoid_: Group, asset, apartment, label as entity name

**User**:
A person with an account who privately owns their subscriptions and reminders.
_Avoid_: Customer, account, client

**Reminder**:
A notification sent before a subscription is due, with configurable days-before (H-3 default) and daily send-time (08:00 Asia/Jakarta default).
_Avoid_: Alert, notification as entity name

**Payment**:
An actual paid instance of a subscription, with paid date, actual amount, and note.
_Avoid_: Transaction, payment history entry, receipt

**Category**:
A user-created label for grouping subscriptions by kind, such as housing or utilities, seeded with defaults.
_Avoid_: Type, tag as entity name
