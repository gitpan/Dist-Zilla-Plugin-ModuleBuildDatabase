
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
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "build a Build.PL that uses Module::Build::Database",
  "dist_author" => [
    "Graham Ollis <plicease\@cpan.org>"
  ],
  "dist_name" => "Dist-Zilla-Plugin-ModuleBuildDatabase",
  "dist_version" => "0.05",
  "license" => "perl",
  "module_name" => "Dist::Zilla::Plugin::ModuleBuildDatabase",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "AnyEvent" => 0,
    "AnyEvent::Open3::Simple" => 0,
    "Dist::Zilla::App" => 0,
    "Dist::Zilla::Plugin::ModuleBuild" => 0,
    "File::Copy" => 0,
    "File::chdir" => 0,
    "Moose" => 0,
    "Path::Class::Dir" => 0,
    "perl" => "v5.10.0"
  },
  "script_files" => []
);


if ( $^O eq 'MSWin32' ) {
delete	$module_build_args{requires}{'AnyEvent'};
delete	$module_build_args{requires}{'AnyEvent::Open3::Simple'};
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
