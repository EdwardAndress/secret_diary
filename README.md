# Secret Diary Exercise

This is an exercise in dependency injection.  The original implementation featured just one class `SecretDiary` which managed diary entries and all the authentication logic.

## Current state of the code base

Some authentication logic has been moved to a new `Security` class and that dependency is being injected into `SecretDiary.new`.  Some of the functionality has been wired up.  SecretDiary now relies on Security for all the logic relating to securing a new `SecretDiary` instance (see `SecretDiary#secure!`).

This is, however, work in progress.  If you think something looks like it might not work, you might be correct!  If you would like to know for sure, open an IRB session, require the files and play with some objects.
