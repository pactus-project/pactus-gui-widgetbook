# Contributing to the Pactus GUI WidgetBook

Thanks for considering contributing to the Pactus Gui WidgetBook project! This guide will walk you through everything you need to know to get started as a contributor, whether you're improving the code, fixing bugs, or adding new features.

## Before You Contribute

### Understand the Project

Pactus is an open-source blockchain framework, and we aim to keep the project clean, efficient, and maintainable. To contribute effectively, it's essential to understand the overall goals of the project and its code structure.

### Design Considerations

Before designing or implementing a component, make sure to:

- **[Figma Design](https://www.figma.com/design/nLgS0tGriGvy70CHDvEjqw/Pactus-Applications-(Community)?node-id=12-1109)**: Check if the component you're planning to work on already exists in the Figma design. If it's missing, feel free to add it. But avoid redesigning existing components that are already part of the project.

By doing this, we maintain consistency across the platform and avoid redundant work.

## How to Contribute

Follow these steps to contribute to the project:

### Code Guidelines

We strive to maintain clean, readable, and maintainable code in the Pactus Gui WidgetBook project. Please follow these guidelines when contributing to the project:

- Follow the principles of clean code as outlined in Robert C. Martin's "[Clean Code](https://www.amazon.com/Clean-Code-Handbook-Software-Craftsmanship/dp/0132350882)" book.
- Write tests for new code or changes to existing code, and make sure all tests pass before submitting a pull request.

### Commit Guidelines

Please follow these rules when committing changes to the Pactus blockchain:

- Each commit should represent a single, atomic change to the codebase. Avoid making multiple unrelated changes in a single commit.
- Use the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) format for commit messages and Pull Request titles.

#### Commit type

List of conventional commit [types](https://github.com/commitizen/conventional-commit-types/blob/master/index.json):

| Types    | Description                                                                       |
| -------- | --------------------------------------------------------------------------------- |
| fix      | A big fix                                                                         |
| feat     | A new feature                                                                     |
| docs     | Documentation only changes                                                        |
| test     | Adding missing tests or correcting existing tests                                 |
| build    | Changes that affect the build system or external dependencies                     |
| ci       | Changes to our CI configuration files and scripts                                 |
| perf     | A code change that improves performance                                           |
| refactor | A code change that neither fixes a bug nor adds a feature                         |
| style    | Changes that do not affect the meaning of the code (white-space, formatting, etc) |
| chore    | Other changes that don't modify src or test files                                 |

#### Commit Scope

The scope helps specify which part of the code is affected by your commit. It must be included in the commit message to provide clarity. Multiple scopes can be used if the changes impact several areas.

Here’s a list of available scopes: [available scopes](./.github/workflows/semantic-pr.yml).

#### Commit Description

- Keep the commit message under 50 characters.
- Start the commit message with a lowercase letter and do not end with punctuation.
- Write commit messages in the imperative: "fix bug" not "fixed bug" or "fixes bug".

### Examples

- Correct ✅: "feat(grpc): sign transaction using wallet client"
- Correct ✅: "feat(grpc, wallet): sign transaction using wallet client"
- Incorrect ❌: 'feat(gRPC): Sign transaction using wallet client."
- Incorrect ❌: 'feat(grpc): Sign transaction using wallet client."
- Incorrect ❌: 'feat(grpc): signed transaction using wallet client"
- Incorrect ❌: 'sign transaction using wallet client"

### Code Review Process

Before your pull request is merged, the following checks will be made:

1. **Checkout Code**: The code will be pulled from the repository for the next steps.
2. **Flutter Environment Setup**: A specific version of Flutter (3.27.3) is installed to ensure the development environment is properly set.
3. **Install Dependencies**: The command `flutter pub get` will be executed to install all project dependencies.
4. **Generate Localization Files**: The `flutter gen-l10n` command will be run to generate translation files.
   - Any untranslated messages will cause an error, and the process will be stopped until they are addressed.
5. **Check Localization Files**: The command `git diff --exit-code lib/l10n/` will be run to ensure translation files are up to date.
6. **Check for Changes in `translations_utils.dart`**: If changes are made to this file, an error message will ask the user to apply the necessary changes and save them.
7. **Code Formatting Check**: The command `dart format .` will ensure that the code is properly formatted. Any deviations will prompt the user to reformat and save the changes.
8. **Code Analysis**: The command `flutter analyze` will check for any issues in the code.
9. **Run Tests**: The command `flutter test` will execute the project's tests to ensure everything works correctly.
10. **Merge Check**: If all the steps are successful, a message will indicate that the pull request is ready to be merged.

If any of these checks fail, the process will be stopped, and the contributor will need to make corrections.

## After Submitting Your PR

Once your PR is submitted, we’ll review your changes as soon as possible. If your changes meet our standards and everything looks good, we’ll merge them into the main branch.

- **If Approved**: Your PR will be merged and included in the next release.
- **If Rejected**: You will receive feedback on what needs to be improved. Please make the necessary changes and update your PR.

## Reporting Issues

If you find a bug or issue, please create an issue on GitHub and provide detailed information about how to reproduce it, what environment you're testing in, and steps to fix it if possible.

## Code of Conduct

We follow the Contributor Covenant Code of Conduct to ensure that everyone in our community is treated with respect and kindness. Please read it before contributing.

[Read the full Code of Conduct](https://www.contributor-covenant.org/version/2/1/code_of_conduct/)

---
Thank you for your contributions to the Pactus Gui WidgetBook! We look forward to seeing your contributions and working together to make this project better.