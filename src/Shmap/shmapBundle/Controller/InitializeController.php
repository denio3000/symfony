<?php

namespace Shmap\shmapBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller,
    Symfony\Component\HttpFoundation\JsonResponse;

class InitializeController extends Controller
{

    /**
    * Get all list
    * @param $id
    * @return JsonResponse
    */
    public function getShopListAction($category = null)
    {
        if($category != null){
            $shops = $this->getDoctrine()
                ->getRepository('shmapBundle:Shop')
                ->findByCategory($category);
        }

        if (!$shops) {
            throw $this->createNotFoundException(
                'No product found for cat '.$category
            );
        }

        return new JsonResponse(array('shops' => $shops));
    }

    /**
     * Get by #id
     * @param $id
     * @return JsonResponse
     */
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
