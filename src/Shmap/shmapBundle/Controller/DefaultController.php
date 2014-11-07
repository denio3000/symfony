<?php

namespace Shmap\shmapBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction($name)
    {
        return $this->render('shmapBundle:Default:index.html.twig', array('name' => $name));
    }
}
