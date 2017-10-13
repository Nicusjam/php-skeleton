<?php

namespace MatthiasMullie\Skeleton\Tests;

use MatthiasMullie\Skeleton\Skeleton;
use PHPUnit\Framework\TestCase;

class SkeletonTest extends TestCase
{
    public function testGetAndSet()
    {
        $skeleton = new Skeleton();
        $this->assertInstanceOf('MatthiasMullie\Skeleton\Skeleton', $skeleton);
    }
}
