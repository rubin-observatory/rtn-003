.. image:: https://img.shields.io/badge/rtn--003-lsst.io-brightgreen.svg
   :target: https://rtn-003.lsst.io
.. image:: https://github.com/rubin-observatory/rtn-003/workflows/CI/badge.svg
   :target: https://github.com/rubin-observatory/rtn-003/actions/

####################################################
Guidelines for Rubin Independent Data Access Centers
####################################################

RTN-003
=======

This document provides guidelines for groups that are independent from the LSST Project and Operations (i.e. LSST Data Facility) and would like to stand up an independent Data Access Center (IDAC; existing data centers that could serve LSST data products are considered IDACs for purposes of this document). Some IDACs may want to serve only a subset of the LSST data products: this document proposes three portion sizes, from full releases to a “light” catalog without posteriors. Guidelines and requirements for IDACs in terms of data storage, computational resources, dedicated personnel, and user authentication are described, as well as a preliminary assessment of the cost impacts. Some institutions, even those inside the US and Chile, may serve LSST data products locally to their research community. Requirements and responsibilities for such institutional bulk data transfers are also described here. The purpose of this draft document is to serve as a preliminary resource for partner institutions wishing to assess the feasibility of hosting an IDAC.

Links
=====

- Live drafts: https://rtn-003.lsst.io
- GitHub: https://github.com/rubin-observatory/rtn-003

Build
=====

This repository includes lsst-texmf_ as a Git submodule.
Clone this repository::

    git clone --recurse-submodules https://github.com/rubin-observatory/rtn-003

Compile the PDF::

    make

Clean built files::

    make clean

Updating acronyms
-----------------

A table of the technote's acronyms and their definitions are maintained in the `acronyms.tex` file, which is committed as part of this repository.
To update the acronyms table in ``acronyms.tex``::

    make acronyms.tex

*Note: this command requires that this repository was cloned as a submodule.*

The acronyms discovery code scans the LaTeX source for probable acronyms.
You can ensure that certain strings aren't treated as acronyms by adding them to the `skipacronyms.txt <./skipacronyms.txt>`_ file.

The lsst-texmf_ repository centrally maintains definitions for LSST acronyms.
You can also add new acronym definitions, or override the definitions of acronyms, by editing the `myacronyms.txt <./myacronyms.txt>`_ file.

Updating lsst-texmf
-------------------

`lsst-texmf`_ includes BibTeX files, the ``lsstdoc`` class file, and acronym definitions, among other essential tooling for LSST's LaTeX documentation projects.
To update to a newer version of `lsst-texmf`_, you can update the submodule in this repository::

   git submodule update --init --recursive

Commit, then push, the updated submodule.

.. _lsst-texmf: https://github.com/lsst/lsst-texmf
