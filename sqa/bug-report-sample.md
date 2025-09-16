# Bug Report – Expense Tracker

## Bug ID: BUG-001
### Title:
Expense Summary Not Updating After Deletion

### Description:
When a user deletes an expense, the total summary at the top of the screen does not update immediately. It still shows the old total until the app is restarted.

### Steps to Reproduce:
1. Open the app.
2. Add two expenses (e.g., $10 and $20).
3. Delete one expense (e.g., $10).
4. Check the expense summary.

### Expected Result:
The summary should update automatically to show the correct remaining total ($20).

### Actual Result:
The summary still shows the old total ($30) until the app is restarted.

### Severity:
Major

### Status:
Open


