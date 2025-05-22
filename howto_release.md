How to release a new version of URREF:

1. Merge the appropriate pull requests.
2. Update the ontology annotations in URREF.ttl:
    - owl:versionInfo
    - owl:priorVersion
    - dcterms:modified
    - rdfs:comment
3. Run the `make_diagram.sh` script.
4. Commit all changes on the master branch, e.g. `git commit -a`
5. Tag the commit with the version, e.g. `git tag v4.1.0`
6. Push on the main repository, e.g. `git push --tags origin master`
7. Click on "Create a new release" on Github
8. Choose the new version tag
9. Click on "Generate release notes", and then "Publish release"
10. Update the ETURWG web page with the new version and diagram
