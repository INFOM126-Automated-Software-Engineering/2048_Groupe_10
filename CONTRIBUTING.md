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
