# @summary
#   Manages directories with plain Icinga 2 configuration files.
#
# @param identifier
#   Identifier of the base directory.
#
# @param source
#   Absolute path of the source direcory.
#
# @param target
#   Absolute path of the target direcory.
#
# @param extensions
#   Only files with these extensions will be synced. Defaults to `.conf`
#
# @api private
#
define icingaweb2::module::fileshipper::directory (
  String[1]                        $identifier = $title,
  Optional[Stdlib::Absolutepath]   $source     = undef,
  Optional[Stdlib::Absolutepath]   $target     = undef,
  String[1]                        $extensions = '.conf',
) {
  assert_private("You're not supposed to use this defined type manually.")

  $module_conf_dir = $icingaweb2::module::fileshipper::module_conf_dir

  icingaweb2::inisection { "fileshipper-directory-${identifier}":
    section_name => $identifier,
    target       => "${module_conf_dir}/directories.ini",
    settings     => {
      'source'     => $source,
      'target'     => $target,
      'extensions' => $extensions,
    },
  }
}
