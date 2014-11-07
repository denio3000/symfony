<?php

namespace Shmap\shmapBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class InitializeController extends Controller
{
    public function getShopDetailsAction($id)
    {

        $shops = $this->getDoctrine()
            ->getRepository('shmapBundle:Shop')
            ->find($id);

        if (!$shops) {
            throw $this->createNotFoundException(
                'No product found for id '.$id
            );
        }
        print_r($shops);

        // ... do something, like pass the $product object into a template
        return $this->render('shmapBundle:Initialize:getShopDetails.html.twig', array(
                'shops' => $shops
            ));
    }

}
