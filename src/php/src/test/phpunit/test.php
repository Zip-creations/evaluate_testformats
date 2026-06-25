<?php

use PHPUnit\Framework\TestCase;

final class BasicTest extends TestCase
{
    public function test_neg(): void
    {
        $this->assertTrue(true);
    }

    public function test_pos(): void
    {
        $this->assertTrue(false);
    }

    public function test_skip(): void
    {
        $this->markTestSkipped(
            'this test will be skipped, to show how skipped tests are handled'
        );

        $this->assertTrue(true);
    }

    public function test_same_name(): void
    {
        $this->assertTrue(true);
    }
}
