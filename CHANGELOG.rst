Changelog
=========

2.3.1 (2023-10-28)
------------------
- [PATCH] Reverted to Checkstyle 9.3 due to 10.x's requiring Java 11

2.3.0 (2023-10-27)
------------------
- [MINOR] Bumped several plugin versions because it has been four years since the last update
- [MINOR] Made improvements to Checkstyle configuration in alignment with latest version
- [MINOR] Reverted to ``maven-deploy-plugin``
- [MINOR] Updated the Enforcer configuration to require one of the four current LTS Java versions
  (1.8, 11, 17, and 21).
- [MINOR] Switch from Travis CI to GitHub Workflows

2.2 (2019-01-26)
----------------
- [MINOR] Some improvements to support needs of Raw Sockets

2.1 (2019-01-25)
----------------
- [MINOR] Some improvements to the Checkstyle configuration to better align with the code style we're looking for
- [MINOR] Improvements to the Travis build based on feedback from the folks at Travis

2.0 (2019-01-21)
----------------
- [MAJOR] Re-branded all projects from NWTSJavaCode to OddSource Code
- [MAJOR] Switched to using Travis CI for all continuous integration
- [MAJOR] Switched to the ``nexus-staging-maven-plugin`` for deployments instead of ``maven-deploy-plugin``
- [MAJOR] Switched from tabs to spaces
- [MINOR] Codified explicit code style rules
- [MINOR] Configured mandatory license header check in Maven build

1.1 (2013-04-24)
----------------
- [MINOR] A few simple bug fixes in the POM

1.0 (2013-04-08)
----------------
- [MAJOR] Initial release
