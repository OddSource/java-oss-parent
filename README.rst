OddSource OSS Parent
====================

.. image:: https://api.travis-ci.org/OddSource/java-oss-parent.svg
    :target: https://travis-ci.org/OddSource/java-oss-parent

.. image:: https://img.shields.io/github/license/OddSource/java-oss-parent.svg
    :target: https://github.com/OddSource/java-oss-parent/blob/master/LICENSE.txt

.. image:: https://img.shields.io/maven-central/v/io.oddsource.java/oss-parent.svg
    :target: https://search.maven.org/search?q=g:io.oddsource.java%20AND%20a:oss-parent&core=gav

.. image:: https://img.shields.io/github/release/OddSource/java-oss-parent/all.svg
    :target: https://github.com/OddSource/java-oss-parent/releases

This project contains the open source parent project POM for all Java projects under the OddSource Code umbrella. All
Java projects sponsored and hosted by OddSource Code must put the following at the top of their ``pom.xml`` files:

.. code-block:: xml

    <parent>
        <groupId>io.oddsource.java</groupId>
        <artifactId>oss-parent</artifactId>
        <version>2.3</version>
    </parent>

Coding Standards
----------------

At OddSource Code, we abide by the following conventions for all Java and XML code. This is a general overview. For
full code styling rules, see the Checkstyle config in ``pom.xml``.

* Use spaces for indentation, not tabs, always and everywhere.
* Lines must be no longer than 120 characters. Lines shall not be wrapped unless failure to do so would result in lines
  longer than 120 characters.
* Files shall not be longer than 1500 lines, with the exception of binary files (for which lines are not counted) and
  configuration or metadata files incapable of importing other files (such as ``pom.xml``, ``.travis.yml``,
  ``CHANGELOG.rst``, ``README.rst``, etc.).
* Every file shall end in a new line character.
* No identifiers shall contain abbreviations, with the exception of the following: CSV, HTML, TSV, URI, URL, XML, YML,
  YAML. More exceptions might be added in the future.
* Opening curly braces go on a new line.
* Logic branches always use curly braces.
* Put spaces before all opening parenthesis except annotation parameters and method definitions.
* Put spaces around all operators except unary and reference operators.
* When wrapping statements, operators go at the end of the line, not at the beginning of the new line.
* When wrapping method definition arguments and invocation parameters, each argument must go on a separate line,
  indented one tab more than the method definition or invocation (not aligned with the opening parenthesis). The
  closing parenthesis goes on its own line, aligned with the method definition or invocation.
* Method and class annotations must always go on their own lines. Single annotations with zero or one parameters may go
  inline with fields and/or parameters, but more than one annotation or parameter shall require annotations to go on
  their own line.
* Methods, constructors, and uninterrupted blocks of statements shall be 50 lines or shorter.
* Anonymous inner classes shall be 20 lines or shorter.
* Wrapped arrays shall include trailing commas.
* Star and static imports shall not be used.
* Imports shall be grouped as follows, with one blank line between each import group:

  * Standard ``java`` and ``javax`` imports
  * Third party imports
  * External imports starting with ``io.oddsource.java``
  * Internal imports from the same project

* There shall be one blank line between the package statement and imports, between imports and class definition,
  between class definitions, between class field definitions, and between constructor and method definitions.
* Place just one statement per line; do not combine multiple statements onto a single line.
* Each file shall have just one top-level class matching the name of the file.
* Overloaded methods shall be grouped together, not spread throughout the class.
* Methods and constructors shall not have more that 10 parameters.
* ``this`` shall always be used when accessing methods and fields within the same class.
* Methods returning ``void`` shall not have more than one ``return`` statement. All other methods shall not have more
  than two ``return`` statements.
* Methods and constructors shall not ``throws`` more than four different exception types.
* Any native code, which should be rare, shall be compiled and bundled within the JAR of the code that uses it for
  easier distributions. A given JAR should contain a ``.dll`` for Windows, an ``.so`` for Linux (or multiple ``.so``
  files for different Linux distributions, if necessary), and a ``.dylib`` for macOS. Other, more obscure operating
  systems shall not be required to be supported with bundled libraries, but may.
