<?php

namespace Shmap\shmapBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller,
    Symfony\Component\HttpFoundation\JsonResponse;

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

        return new JsonResponse(array('shops' => $shops));
    }

}
