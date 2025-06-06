<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit35266d546f6a0a3b5aef3de57c1aef8c
{
    public static $files = array (
        'bd0c90e7d8440ba632bcc936ba2deb8e' => __DIR__ . '/../..' . '/includes/Functions/CoreFunctions.php',
    );

    public static $prefixLengthsPsr4 = array (
        'W' => 
        array (
            'WPEverest\\URMembership\\Payment\\' => 31,
            'WPEverest\\URMembership\\' => 23,
            'WPEverest\\URM\\DiviBuilder\\' => 26,
        ),
        'S' => 
        array (
            'Stripe\\' => 7,
        ),
        'C' => 
        array (
            'Composer\\Installers\\' => 20,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'WPEverest\\URMembership\\Payment\\' => 
        array (
            0 => __DIR__ . '/../..' . '/modules/payment-history',
        ),
        'WPEverest\\URMembership\\' => 
        array (
            0 => __DIR__ . '/../..' . '/modules/membership/includes',
        ),
        'WPEverest\\URM\\DiviBuilder\\' => 
        array (
            0 => __DIR__ . '/../..' . '/includes/3rd-party/DiviBuilder',
        ),
        'Stripe\\' => 
        array (
            0 => __DIR__ . '/..' . '/stripe/stripe-php/lib',
        ),
        'Composer\\Installers\\' => 
        array (
            0 => __DIR__ . '/..' . '/composer/installers/src/Composer/Installers',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit35266d546f6a0a3b5aef3de57c1aef8c::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit35266d546f6a0a3b5aef3de57c1aef8c::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit35266d546f6a0a3b5aef3de57c1aef8c::$classMap;

        }, null, ClassLoader::class);
    }
}
