<?php
/**
 * Author 			: Sunil Kumar
 * Copyright © 2014, Manipal Universal Learning (P) Ltd.
 * Created on 		: Jun 15, 2014
 * Last Updated on	: Jul 15, 2014
 * Reviewer			:
 * Reviewed On		:
 * Review comments 	: 
 */

class EventPayLoad
{
	
	/**
	 * Name of the event
	 */
	protected $eventName;
	
	/**
	 * Holds refernce to Person who raised the event
	 */
	protected $personId;
	
	/**
	 * Identifier of the community in which it is raised.
	 */
	protected $communityId;
	
	/**
	 * Entity that is effected.
	 */
	protected $entityId;
	
	
	/**
	 * Date time at which event is raised
	 */
	protected $eventRaisedOn;
	
	/**
	 * Holds the data that is to be passed to the listener.
	 * This is an array so data is put as Key-Value pairs.
	 */
	protected $dataMap;

	/**
	 * Holds metadata of the event.
	 */
	protected $metaDataMap;

	/**
	 * Default constructor. 
	 * Initializes the data map and matadata arrays.
	 */
	public function __construct()
	{
		$this->dataMap = array();
		$this->metaDataMap = array();
		$this->eventRaisedOn = DateTimeUtil::getCurrentDateAndTime();
	}
	
	/**
	 * Returns the data map of this payload.
	 */
	public function getDataMap()
	{
		return $this->dataMap;
	}
	
	/**
	 * Sets the data map.
	 */
	public function setDataMap($dataMap)
	{
		$this->dataMap = $dataMap;
	}
	
	/**
	 * Returns the metadadata map of the event.
	 */
	public function getMetaDataMap()
	{
		return $this->metaDataMap;
	}
	
	/**
	 * Sets the metadata map.
	 */
	public function setMetaDataMap($metaDataMap)
	{
		$this->metaDataMap = $metaDataMap;
	}

	/**
	 * Returns the Id of the person who raised this event
	 */
	public function getRaisedBy()
	{
		return $this->personId;
	}
	
	/**
	 * Sets the Person who raised the event
	 */
	public function setRaisedBy($personId)
	{
		$this->personId = $personId;
	}

	/**
	 * Returns the Id of the community in which this event is raised
	 */
	public function getCommunityId()
	{
		return $this->communityId;
	}
	
	/**
	 * Sets the community in which the event is raised.
	 */
	public function setCommunityId($communityId)
	{
		$this->communityId = $communityId;
	}
	
	/**
	 * Returns the Id of the entity.
	 */
	public function getEntityId()
	{
		return $this->entityId;
	}
	
	/**
	 * Sets the Identifier of the entity 
	 */
	public function setEntityId($entityId)
	{
		$this->entityId = $entityId;
	}	

	/**
	 * Returns the name of the event
	 */
	public function getEventName()
	{
		return $this->eventName;
	}
	
	/**
	 * Sets the Name of the Event 
	 */
	public function setEventName($eventName)
	{
		$this->eventName = $eventName;
	}
	
	/**
     * Convert event payload to transportable string
     *
     * @return string
     */
    public function convertToString()
    {
    	$delimiter = "|";
        $data = $this->eventName . $delimiter;
        $data .= $this->personId . $delimiter;
        $data .= $this->communityId . $delimiter;
        $data .= $this->entityId . $delimiter;
        $data .= $this->eventRaisedOn . $delimiter;
        
        foreach ($this->dataMap as $name => $value) {
            $data .= $name . "`" . $value . "~";
        }
        $data .= $delimiter;
        
    	foreach ($this->metaDataMap as $name => $value) {
            $data .= $name . "`" . $value . "~";
        }
        $data .= $delimiter;
       
        return $data;
    }
    
    /**
     * Re-populates the object with toString 
     * 
     * @param unknown_type $toString
     */
    public function repopulateObject($toString) 
    {
    	$mdata = explode('|', $toString);
    	
    	if(strlen(trim($mdata[0])) > 0) 
    	{
    		$this->eventName = $mdata[0];
    	}
    	
    	if(strlen(trim($mdata[1])) > 0) 
    	{
    		$this->personId = $mdata[1];
    	}
    	
   	 	if(strlen(trim($mdata[2])) > 0) 
    	{
    		$this->communityId = $mdata[2];
    	}

    	if(strlen(trim($mdata[3])) > 0) 
    	{
    		$this->entityId = $mdata[3];
    	}
    	
    	if(strlen(trim($mdata[4])) > 0) 
    	{
    		$this->eventRaisedOn = $mdata[4];
    	}
    	
    	if(strlen(trim($mdata[5])) > 0) 
    	{
    		$this->setDataMap($this->processMapData($mdata[5]));
    	}
    	if(strlen(trim($mdata[6])) > 0) 
    	{
    		$this->setMetaDataMap($this->processMapData($mdata[6]));
    	}
    }
    
    /**
     * 
     * Process the data passed to it as string and returns array.
     * 
     * @param $mdata
     */
    function processMapData($mapdata)
    {
    	$dataMapArray = explode('~', $mapdata);
    	$maps = array();
    	foreach($dataMapArray as $record)
    	{
    		if(strlen($record) > 0)
    		{
    			$map = explode('`', $record);
    			$maps[$map[0]] = $map[1];
    		}
    	}
    	return $maps;
    }
}