# Expense Tracker – Requirements

## Functional Requirements
1. User can **add an expense** with title, amount, and date.
2. User can **view a list of expenses** in chronological order.
3. User can **delete an expense** from the list.
4. App shows a **summary of total expenses**.
5. App displays **weekly/monthly chart** of expenses.
6. User can **edit an expense** (title, amount, date).
7. App should store expenses **locally** (no backend required).
8. App should support **basic navigation** (Home, Add Expense, Stats).

## Non-Functional Requirements
1. App should be **responsive** and work on both Android & iOS.
2. App should handle invalid inputs (e.g., empty title, negative amount).
3. App should provide **feedback** (toast/snackbar) on actions.
4. App should load expense list in **less than 2 seconds**.
5. UI must follow **Material Design guidelines**.
6. Code should follow **Flutter best practices** and be testable.

## Acceptance Criteria
- Adding a valid expense updates the list instantly.
- Deleted expenses are removed immediately.
- Expense summary updates correctly after add/delete/edit.
- Charts reflect actual stored data.
