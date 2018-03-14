# README

Rails built contact form with the following capabilities:

**Input Validation.**
- Reject blank submissions (email & content fields)
- Require email submissions to be properly formatted
- Require a minimum message length

**Database Storage**
- Store messages on a database

**Help Text**
- Display error messages if the form receives bad inputs
- Display a success message upon a successful form submission

**Form Reset**
- Reset the form after a successful message submission
- Do not reset the form if a validation error is triggered

**Ajax**
- Send messages to the database asynchronously so that:
- Help text is displayed without a full-page reload
- The form is reset without a full-page reload


### Future Improvements
1. Better handling of errors.
2. Server-side validation alone (IMPLEMENTED)
