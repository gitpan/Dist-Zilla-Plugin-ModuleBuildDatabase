
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601",
    "Test::DZil" => 0,
    "Test::More" => "0.88"
  },
  "configure_requires" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "build a Build.PL that uses Module::Build::Database",
  "dist_author" => [
    "Graham Ollis <plicease\@cpan.org>"
  ],
  "dist_name" => "Dist-Zilla-Plugin-ModuleBuildDatabase",
  "dist_version" => "0.01",
  "license" => "perl",
  "module_name" => "Dist::Zilla::Plugin::ModuleBuildDatabase",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Dist::Zilla::Plugin::ModuleBuild" => 0,
    "Moose" => 0,
    "perl" => "v5.10.0"
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
