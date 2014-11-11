<?php

namespace Shmap\shmapBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Shop
 */
class Shop
{
    /**
     * @var integer
     */
    public $id;

    /**
     * @var string
     */
    public $title;

    /**
     * @var string
     */
    public $description;

    /**
     * @var string
     */
    public $avatar;

    /**
     * @var integer
     */
    public $visits;

    /**
     * @var string
     */
    public $latlong;

    /**
     * @var int
     */
    public $creator_id;

    /**
     * @var int
     */
    public $premium_id;

    /**
     * @var string
     */
    public $address;

    /**
     * @var string
     */
    public $category;

    /**
     * @var string
     */
    public $created;

    /**
     * @var string
     */
    public $city;


    /*******************
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set title
     *
     * @param string $title
     * @return Shop
     */
    public function setTitle($title)
    {
        $this->title = $title;

        return $this;
    }

    /**
     * Get title
     *
     * @return string 
     */
    public function getTitle()
    {
        return $this->title;
    }

    /**
     * Set description
     *
     * @param string $description
     * @return Shop
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description
     *
     * @return string 
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set visits
     *
     * @param integer $visits
     * @return Shop
     */
    public function setVisits($visits)
    {
        $this->visits = $visits;

        return $this;
    }

    /**
     * Get visits
     *
     * @return integer 
     */
    public function getVisits()
    {
        return $this->visits;
    }
}
