# Contributing

We love pull requests from everyone. By participating in this project, you agree
to abide by the [code of conduct](CODE_OF_CONDUCT.md).

Fork, then clone the repo:

    git clone git@github.com:your-username/doorkeeper.git

### Docker Setup

Build the container image with: `docker build --pull -t doorkeeper:test .`
Run the tests with: `docker run -it --rm doorkeeper:test`

### Local Setup

### Troubleshooting GitHub Actions Workflow
When encountering a failed run in GitHub Actions, follow these steps to troubleshoot and resolve the issue:
1. Analyze the error logs to identify the root cause of the failure.
2. Check for any recent changes that may have caused the failure.
3. Review the GitHub Actions workflow file for any misconfigurations or errors.
4. Make the necessary code changes and push them to the repository.
5. Monitor the subsequent GitHub Actions runs to ensure the issue has been resolved.

* Set up Ruby dependencies via Bundler

      bundle install

* Make sure the tests pass:

      rake spec

* Make your changes.
* Write tests.
* Follow our [style guides](.rubocop.yml).
* Make the tests pass:

      rake spec

* Add notes about your changes to the `CHANGELOG.md` file.

* Write a [good commit message][commit].
* Push to your fork.
* [Submit a pull request][pr].

[commit]: http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html
[pr]: https://github.com/doorkeeper-gem/doorkeeper/compare/

* If [Hound] catches style violations, fix them. If our bot suggested changes — please add them.

[hound]: https://houndci.com

* Wait for us. We try to at least comment on pull requests within one business day.
* We may suggest changes.
* Please, squash your commits to a single one if you introduced a new changes or pushed more than
one commit. Let's keep the history clean.
* Troubleshooting GitHub Actions Workflow: If the GitHub Actions run failed, follow the steps outlined in the [Contributing section](#B) to troubleshoot and resolve the issue. If necessary, reach out to the maintainers for assistance.

Thank you for your contribution! :handshake:
