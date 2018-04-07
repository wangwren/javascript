package vvr.js;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class ProvinceCityAreaAction extends ActionSupport {

	private static final long serialVersionUID = -3621480392552291184L;
	private Bean bean;
	//保存城市的集合,并为其提供get方法，Struts2框架会将其转为JAVA格式的json数据
	private List<String> cityList = new ArrayList<String>();
	//保存区域的集合,并为其提供get方法，Struts2框架会将其转为JAVA格式的json数据
	private List<String> areaList = new ArrayList<String>();
	
	public List<String> getAreaList() {
		return areaList;
	}
	public List<String> getCityList() {
		return cityList;
	}
	public Bean getBean() {
		return bean;
	}
	public void setBean(Bean bean) {
		this.bean = bean;
	}
	
	/**
	 * 通过省份级联城市
	 * @return
	 */
	public String findCityByProvince(){
		
		if("辽宁".equals(bean.getProvince())){
			cityList.add("沈阳");
			cityList.add("抚顺");
			cityList.add("大连");
			cityList.add("鞍山");
		}else if("吉林".equals(bean.getProvince())){
			cityList.add("长春");
			cityList.add("四平");
		}else if("黑龙江".equals(bean.getProvince())){
			cityList.add("哈尔滨");
			cityList.add("齐齐哈尔");
			cityList.add("佳木斯");
		}
		
		return SUCCESS;
	}
	
	/**
	 * 通过城市级联区域
	 * @return
	 */
	public String findAreaByCity(){
		if("沈阳".equals(bean.getCity())){
			areaList.add("沈河区");
			areaList.add("大东区");
			areaList.add("铁西区");
			areaList.add("皇姑区");
			areaList.add("浑南区");
		}else if("大连".equals(bean.getCity())){
			areaList.add("开发区");
			areaList.add("甘井子");
			areaList.add("旅顺");
			areaList.add("金州");
			areaList.add("庄河");
		}else if("长春".equals(bean.getCity())){
			areaList.add("GG");
			areaList.add("HH");
			areaList.add("JJ");
		}
		return SUCCESS;
	}
}
