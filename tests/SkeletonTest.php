<?php

namespace MatthiasMullie\Skeleton\Tests;

use MatthiasMullie\Skeleton\Skeleton;
use PHPUnit_Framework_TestCase;

class SkeletonTest extends PHPUnit_Framework_TestCase
{
    public function testGetAndSet()
    {
        $skeleton = new Skeleton();
        $this->assertInstanceOf('MatthiasMullie\Skeleton\Skeleton', $skeleton);
    }
}
