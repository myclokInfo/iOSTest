# # Sometimes it's a README fix, or something like that - which isn't relevant for
# # including in a project's CHANGELOG for example
# declared_trivial = github.pr_title.include? "#trivial"
#
# # Make it more obvious that a PR is a work in progress and shouldn't be merged yet
# warn("PR is classed as Work in Progress") if github.pr_title.include? "[WIP]"
#
# # Warn when there is a big pr
# warn("Big PR") if git.lines_of_code > 500
#
# # Don't let testing shortcuts get into master by accident
# fail("fdescribe left in tests") if `grep -r fdescribe specs/ `.length > 1
# fail("fit left in tests") if `grep -r fit specs/ `.length > 1
#
# # Run SwiftLint
# swiftlint.config_file = '.swiftlint.yml'
# swiftlint.lint_files
#
#
# # What changed?
# has_lib_changes = !git.modified_files.grep(/iOSTest/).empty?
# has_test_changes = !git.modified_files.grep(/iOSTestTests/).empty?
# has_changelog_changes = git.modified_files.include?("CHANGELOG.md")
#
#
# # You've made changes to lib, but didn't write any tests?
# if has_lib_changes && !has_test_changes
#   warn("There are code changes, but no corresponding tests. "\
#        "Please include tests if this PR introduces any modifications in "\
#        "Freshl's behavior.",
#        :sticky => false)
# end


fail 'Please add labels to this PR' if github.pr_labels.empty?



# Code Coverage

xcov.report(
   scheme: 'iOSTest',
   workspace: 'iOSTest.xcworkspace',
   only_project_targets: true,
   include_test_targets:true,
   minimum_coverage_percentage: 10.0
)


# changelog.check
