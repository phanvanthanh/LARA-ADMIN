<?php
namespace App\Helpers;
use App\Payc;
use DB;

class Helper
{


	private static $paycHasChildLevel=-1;
    private static $paycHasChildArrItem=array();
    public static function paycTreeResourceHasChild($data, $id){
        foreach ($data as $key => $item) {
            if($item['parent_id']==$id){
                Helper::$paycHasChildLevel++;
                $item['level']=Helper::$paycHasChildLevel;
                if(!isset(Helper::$paycHasChildArrItem[$item['id']])){
                	$item['has_child']=0;
					Helper::$paycHasChildArrItem[$item['id']]=$item;
					if(isset(Helper::$paycHasChildArrItem[$item['parent_id']])){
						Helper::$paycHasChildArrItem[$item['parent_id']]['has_child']=Helper::$paycHasChildArrItem[$item['parent_id']]['has_child']+1; // Nếu có con thì tăng lên một đơn vị
					}
                }                	     
                unset($data[$key]);          
                Helper::paycTreeResourceHasChild($data, $item['id']);
                Helper::$paycHasChildLevel--;
            }           
        }
        return Helper::$paycHasChildArrItem;
    }

    private static $paycLevel=-1;
    private static $paycArrItem=array();
    public static function paycTreeResource($data, $id){
        foreach ($data as $key => $item) {
            if($item['parent_id']==$id){
                Helper::$paycLevel++;
                $item['level']=Helper::$paycLevel;
                if(!isset(Helper::$paycArrItem[$item['id']])){
                    $item['has_child']=0;
					Helper::$paycArrItem[$item['id']]=$item;
                    if(isset(Helper::$paycArrItem[$item['parent_id']])){
                        Helper::$paycArrItem[$item['parent_id']]['has_child']=Helper::$paycArrItem[$item['parent_id']]['has_child']+1; // Nếu có con thì tăng lên một đơn vị
                    }
                }                	     
                unset($data[$key]);          
                Helper::paycTreeResource($data, $item['id']);
                Helper::$paycLevel--;
            }           
        }
        return Helper::$paycArrItem;
    }


    public static function toDatePayc($datetime)
    {
        $result = '';
        try {
            $date = date_create($datetime);
            $result = $date->format('Y-m-d H:i:s');
        } catch (Exception $ex) {
            $result = date('Y-m-d H:i:s');
        }
        return $result;
    }

    private static $pathFile='public/file/payc';

    public static function getAndStoreFile($files){
        $fileNameSave='';
        foreach ($files as $key => $file) {
            $fileName=pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME).'_'.time().$key.'.'.$file->getClientOriginalExtension();
            $fileNameSave.=str_replace(' ','',$fileName.';');
            $fileName=str_replace(' ','',$fileName);
            $path = $file->storeAs(Helper::$pathFile, $fileName);
        }
        return $fileNameSave;

    }

    private static $level_TreeDonViByParentId=0;
    private static $arrItem_TreeDonViByParentId=array();
    public static function treeDonViByParentId($data, $id){
        foreach ($data as $key => $item) {
            if($item['id']==$id){
                $item['level']=Helper::$level_TreeDonViByParentId;
                Helper::$arrItem_TreeDonViByParentId[$item['id']]=$item; 
            }
            if($item['parent_id']==$id && $item['ma_dinh_danh']==null){
                Helper::$level_TreeDonViByParentId++;
                $item['level']=Helper::$level_TreeDonViByParentId;
                if(!isset(Helper::$arrItem_TreeDonViByParentId[$item['id']])){
                    Helper::$arrItem_TreeDonViByParentId[$item['id']]=$item; 
                }                        
                unset($data[$key]);          
                Helper::treeDonViByParentId($data, $item['id']);
                Helper::$level_TreeDonViByParentId--;
            }           
        }
        return Helper::$arrItem_TreeDonViByParentId;
    }


	
}
	
?>