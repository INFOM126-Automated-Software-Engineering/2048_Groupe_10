# Contributing guidelines

## Branch Strategy

Our project follows the Git-Flow branching strategy to ensure a smooth and organized development process. Here’s how we manage our branches:

1. **Main Branches**:
   - **`main`**: This branch contains the production-ready code. All completed and tested features are merged here.
   - **`develop`**: This branch contains the latest development changes. It is the integration branch for features and fixes.

2. **Supporting Branches**:
   - **Feature Branches**: These branches are created for developing new features. They are branched off from `develop` and merged back into `develop` once the feature is complete.
     - Naming convention: `feature/issue-<issue-number>` (e.g., `feature/issue-123`)
   - **Release Branches**: These branches are used to prepare for a new production release. They allow for last-minute fixes and preparation tasks.
     - Naming convention: `release/<version>` (e.g., `release/1.0.0`)
   - **Hotfix Branches**: These branches are created for urgent fixes that need to be applied to the `main` branch immediately. They are branched off from `main` and merged back into both `main` and `develop`.
     - Naming convention: `hotfix/<version>` (e.g., `hotfix/1.0.1`)

3. **Branch Workflow**:
   - **Creating a Feature Branch**: When starting work on a new feature, create a feature branch from `develop`.
   - **Developing and Testing**: Develop the feature in the feature branch. Regularly commit changes and push to the remote repository.
   - **Merging Back**: Once the feature is complete and tested, create a pull request to merge the feature branch back into `develop`.
   - **Release Preparation**: When preparing for a new release, create a release branch from `develop`. Perform final testing and fixes, then merge the release branch into both `main` and `develop`.
   - **Hotfixes**: For urgent fixes, create a hotfix branch from `main`, apply the fix, and merge the hotfix branch back into both `main` and `develop`.

By following this branching strategy, we ensure that our codebase remains stable and that new features are integrated smoothly.

<img width="595" alt="Capture d’écran 2024-12-17 à 15 44 50" src="https://github.com/user-attachments/assets/7790150e-0712-426e-910d-e6efcbf11538" />

## How to Contribute Feature Ideas

We greatly appreciate your ideas to improve our 2048 project! To propose a new feature, please follow the steps below:

1. **Go to the Issues section of our GitHub repository**:
   - Visit the Issues page of our repository.

2. **Create a new feature request**:
   - Click on the **"New Issue"** button.
   - Select the **"Feature Request"** template.

3. **Detail your feature idea**:
   - Provide a clear and concise title for your request.
   - In the description, provide as much detail as possible:
     - **Feature Description**: Explain what the feature does and why it is useful.
     - **Use Cases**: Describe how and when this feature would be used.
     - **Benefits**: Indicate the advantages this feature would bring to the project.
     - **Examples**: If possible, provide concrete examples or use case scenarios.

4. **Submit your request**:
   - Review your request to ensure it is complete and clear.
   - Click on **"Submit new issue"** to send your request.

We will review your proposal and keep you informed of its status. Thank you for your contribution!

## What Happens Next

Once your feature request is validated (if it is), the following steps will be taken:

1. **Evaluation of Current Feature Requests**:
   - We will ensure that there are not too many accepted feature requests being worked on simultaneously.
   - We will also assess the maintainability of the feature to ensure it does not require excessive ongoing work.

2. **Branch Creation**:
   - If the feature meets the criteria, we will create a new branch named after the issue number (e.g., `feature/issue-123`).

3. **Collaboration**:
   - Code owners and open-source developers can then contribute to writing the new feature based on the issue and the described requirements.
   - Code owners may also reach out to the person who opened the feature request to discuss and adjust the requirements if necessary.

4. **Development and Review**:
   - Contributions will be reviewed by code owners to ensure they meet the project's standards.
   - Once the feature is fully developed and tested, it will be merged into the develop branch.

We appreciate your contributions and look forward to collaborating with you to enhance our project!

## How to Contribute Code

We welcome contributions from open-source developers! To add code to our project, please follow these guidelines:

1. **Fork and Clone the Repository**:
   - Fork the repository to your GitHub account.
   - Clone the forked repository to your local machine.

2. **Select a Feature Branch**:
   - Choose an existing feature branch that you wish to contribute to. These branches are named after the issue number (e.g., `feature/issue-123`).
   - The specifications for each feature can be found in the Issues section, labeled as `new feature validate`, with the corresponding branch number.

3. **Follow Coding Standards**:
   - Ensure your code adheres to our coding standards by using Checkstyle (the Java linter).
   - Write clean, readable, and maintainable code.

4. **Write Unit Tests**:
   - Write your own unit tests to ensure your code works as expected.
   - Aim for a test coverage of at least 80%.

5. **Commit and Push Changes**:
   - Commit your changes with clear and descriptive commit messages.
   - Push your changes to the selected feature branch.

6. **Create a Pull Request**:
   - Open a pull request (PR) to merge your changes into the `develop` branch.
   - Provide a detailed description of the changes you made and link to the related issue.

7. **Continuous Integration (CI)**:
   - Your PR will trigger the CI pipeline, which includes:
     - Running all tests to ensure they pass.
     - Building the project to ensure it compiles correctly.
     - Performing quality checks using SonarQube.

8. **Code Review**:
   - Code owners will review your PR to ensure it meets our quality standards.
   - If the review is successful, your changes will be merged into the `develop` branch.
   - If adjustments are needed, code owners will discuss the required changes with you.

By following these steps, you help maintain the quality and stability of our project. Thank you for your contributions!

## Commit Message Formats (https://gist.github.com/qoomon/5dfcdf8eec66a051ecd85625518cfd13)

### Default
<pre>
<b><a href="#types">&lt;type&gt;</a></b></font>(<b><a href="#scopes">&lt;optional scope&gt;</a></b>): <b><a href="#description">&lt;description&gt;</a></b>
<sub>empty separator line</sub>
<b><a href="#body">&lt;optional body&gt;</a></b>
<sub>empty separator line</sub>
<b><a href="#footer">&lt;optional footer&gt;</a></b>
</pre>

### Merge Commit
<pre>
Merge branch '<b>&lt;branch name&gt;</b>'
</pre>
<sup>Follows default git merge message</sup>

### Revert Commit
<pre>
Revert "<b>&lt;reverted commit subject line&gt;</b>"
</pre>
<sup>Follows default git revert message</sup>

### Inital Commit 
```
chore: init
```

### Types
* API relevant changes
    * `feat` Commits, that adds or remove a new feature
    * `fix` Commits, that fixes a bug
* `refactor` Commits, that rewrite/restructure your code, however does not change any API behaviour
    * `perf` Commits are special `refactor` commits, that improve performance
* `style` Commits, that do not affect the meaning (white-space, formatting, missing semi-colons, etc)
* `test` Commits, that add missing tests or correcting existing tests
* `docs` Commits, that affect documentation only
* `build` Commits, that affect build components like build tool, ci pipeline, dependencies, project version, ...
* `ops` Commits, that affect operational components like infrastructure, deployment, backup, recovery, ...
* `chore` Miscellaneous commits e.g. modifying `.gitignore`

### Scopes
The `scope` provides additional contextual information.
* Is an **optional** part of the format
* Allowed Scopes depends on the specific project
* Don't use issue identifiers as scopes

### Breaking Changes Indicator
Breaking changes should be indicated by an `!` before the `:` in the subject line e.g. `feat(api)!: remove status endpoint`
* Is an **optional** part of the format

### Description
The `description` contains a concise description of the change.
* Is a **mandatory** part of the format
* Use the imperative, present tense: "change" not "changed" nor "changes"
  * Think of `This commit will...` or `This commit should...`
* Don't capitalize the first letter
* No dot (`.`) at the end

### Body
The `body` should include the motivation for the change and contrast this with previous behavior.
* Is an **optional** part of the format
* Use the imperative, present tense: "change" not "changed" nor "changes"
* This is the place to mention issue identifiers and their relations

### Footer
The `footer` should contain any information about **Breaking Changes** and is also the place to **reference Issues** that this commit refers to.
* Is an **optional** part of the format
* **optionally** reference an issue by its id.
* **Breaking Changes** should start with the word `BREAKING CHANGES:` followed by space or two newlines. The rest of the commit message is then used for this.


### Examples
* ```
  feat: add email notifications on new direct messages
  ```
* ```
  feat(shopping cart): add the amazing button
  ```
* ```
  feat!: remove ticket list endpoint

  refers to JIRA-1337

  BREAKING CHANGES: ticket enpoints no longer supports list all entites.
  ```
* ```
  fix(shopping-cart): prevent order an empty shopping cart
  ```
* ```
  fix(api): fix wrong calculation of request body checksum
  ```
* ```
  fix: add missing parameter to service call

  The error occurred because of <reasons>.
  ```
* ```
  perf: decrease memory footprint for determine uniqe visitors by using HyperLogLog
  ```
* ```
  build: update dependencies
  ```
* ```
  build(release): bump version to 1.0.0
  ```
* ```
  refactor: implement fibonacci number calculation as recursion
  ```
* ```
  style: remove empty line
