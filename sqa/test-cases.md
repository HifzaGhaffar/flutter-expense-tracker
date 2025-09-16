# Test Cases – Expense Tracker

| TC ID | Requirement ID | Test Description             | Steps                                                                 | Expected Result                   | Status |
|-------|----------------|------------------------------|----------------------------------------------------------------------|-----------------------------------|--------|
| TC-01 | FR-1           | Add Expense                  | 1. Open app → Add Expense → Enter valid data → Save                  | Expense appears in list            | Pass/Fail |
| TC-02 | FR-1, FR-2     | View Expenses                | 1. Open app → Check expense list                                     | List shows all expenses            | Pass/Fail |
| TC-03 | FR-3           | Delete Expense               | 1. Add expense → Delete it                                           | Expense removed from list          | Pass/Fail |
| TC-04 | FR-4           | Summary Update               | 1. Add multiple expenses → Check summary                             | Summary shows correct total        | Pass/Fail |
| TC-05 | FR-5           | Chart Display                | 1. Add weekly expenses → Open chart                                  | Chart displays correct values      | Pass/Fail |
| TC-06 | FR-6           | Edit Expense                 | 1. Add expense → Edit details → Save                                 | Updated details shown              | Pass/Fail |
| TC-07 | NFR-2          | Invalid Input Handling       | 1. Try saving without title/negative amount                          | Error shown, expense not saved     | Pass/Fail |
| TC-08 | NFR-4          | Performance                  | 1. Launch app → Load expenses                                        | Loads within 2 seconds             | Pass/Fail |
