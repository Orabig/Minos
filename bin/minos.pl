#!/usr/bin/perl
package main;

use config;

my $CONFIG = Config->new();
$CONFIG->{test}='toto';
$CONFIG->persist('config.txt');
