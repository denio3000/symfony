<?php

namespace Shmap\shmapBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class InitializeControllerTest extends WebTestCase
{
    public function testGetshopdetails()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', 'getshopdetails');
    }

}
