package vvr.js;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class ProvinceCityAreaAction extends ActionSupport {

	private static final long serialVersionUID = -3621480392552291184L;
	private Bean bean;
	//������еļ���,��Ϊ���ṩget������Struts2��ܻὫ��תΪJAVA��ʽ��json����
	private List<String> cityList = new ArrayList<String>();
	//��������ļ���,��Ϊ���ṩget������Struts2��ܻὫ��תΪJAVA��ʽ��json����
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
	 * ͨ��ʡ�ݼ�������
	 * @return
	 */
	public String findCityByProvince(){
		
		if("����".equals(bean.getProvince())){
			cityList.add("����");
			cityList.add("��˳");
			cityList.add("����");
			cityList.add("��ɽ");
		}else if("����".equals(bean.getProvince())){
			cityList.add("����");
			cityList.add("��ƽ");
		}else if("������".equals(bean.getProvince())){
			cityList.add("������");
			cityList.add("�������");
			cityList.add("��ľ˹");
		}
		
		return SUCCESS;
	}
	
	/**
	 * ͨ�����м�������
	 * @return
	 */
	public String findAreaByCity(){
		if("����".equals(bean.getCity())){
			areaList.add("�����");
			areaList.add("����");
			areaList.add("������");
			areaList.add("�ʹ���");
			areaList.add("������");
		}else if("����".equals(bean.getCity())){
			areaList.add("������");
			areaList.add("�ʾ���");
			areaList.add("��˳");
			areaList.add("����");
			areaList.add("ׯ��");
		}else if("����".equals(bean.getCity())){
			areaList.add("GG");
			areaList.add("HH");
			areaList.add("JJ");
		}
		return SUCCESS;
	}
}
