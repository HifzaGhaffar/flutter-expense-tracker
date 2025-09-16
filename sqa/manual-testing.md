#   📋 Manual Testing Plan – Expense Tracker (💰)

## Scope
This document contains manual test cases for the Expense Tracker app.

---

## ✅ Test Cases

### 1. Add Expense
| Test ID | Test Case | Steps | Expected Result |
|---------|-----------|-------|-----------------|
| TC-01 | Add valid expense | 1. Open app<br>2. Tap "➕ Add Expense"<br>3. Enter amount: `100`<br>4. Enter category: `Food`<br>5. Save | Expense should appear in the list with `100` and `Food`. |
| TC-02 | Add expense with empty fields | 1. Open app<br>2. Tap "➕ Add Expense"<br>3. Leave fields empty<br>4. Save | Error message should appear: “All fields required”. |
| TC-03 | Add expense with invalid amount | 1. Open app<br>2. Tap "➕ Add Expense"<br>3. Enter amount: `abc`<br>4. Save | Error message: “Invalid amount”. |

---

### 2. Edit Expense
| Test ID | Test Case | Steps | Expected Result |
|---------|-----------|-------|-----------------|
| TC-04 | Edit expense successfully | 1. Add an expense `200 - Travel`<br>2. Select expense<br>3. Edit category to `Shopping`<br>4. Save | Expense updates to `200 - Shopping`. |
| TC-05 | Edit expense cancel | 1. Add expense<br>2. Open edit<br>3. Change amount<br>4. Press Cancel | Expense remains unchanged. |

---

### 3. Delete Expense
| Test ID | Test Case | Steps | Expected Result |
|---------|-----------|-------|-----------------|
| TC-06 | Delete single expense | 1. Add expense `150 - Bills`<br>2. Select Delete<br>3. Confirm | Expense is removed from the list. |
| TC-07 | Cancel delete | 1. Add expense<br>2. Press Delete<br>3. Cancel | Expense remains in the list. |

---

### 4. View Expense List
| Test ID | Test Case | Steps | Expected Result |
|---------|-----------|-------|-----------------|
| TC-08 | View all expenses | Add multiple expenses<br>Open list | All expenses should display correctly. |
| TC-09 | Empty list view | Launch app with no expenses | Show message: “No expenses yet”. |

---

### 5. Summary / Report
| Test ID | Test Case | Steps | Expected Result |
|---------|-----------|-------|-----------------|
| TC-10 | View total expenses | Add 3 expenses (100, 200, 300)<br>Open Summary | Total = `600`. |
| TC-11 | View category-wise report | Add Food (100), Travel (200)<br>Open Summary | Food = 100, Travel = 200. |

---
                                                                        
