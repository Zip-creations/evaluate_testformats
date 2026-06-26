<?php

use Behat\Behat\Context\Context;
use Behat\Testwork\Tester\Exception\PendingException;

final class FeatureContext implements Context
{
    /**
     * @Then the value should be true
     */
    public function theValueShouldBeTrue(): void
    {
        if (true !== true) {
            throw new Exception('Expected value to be true.');
        }
    }

    /**
     * @Then the value should be false but expected true
     */
    public function theValueShouldBeFalseButExpectedTrue(): void
    {
        if (false !== true) {
            throw new Exception('Expected false to be true.');
        }
    }

    /**
     * @Then this scenario is skipped
     */
    public function thisScenarioIsSkipped(): void
    {
        throw new PendingException(
            'this test will be skipped, to show how skipped tests are handled'
        );
    }
}
