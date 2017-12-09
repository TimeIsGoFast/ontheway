package net.zjwu.mis.business.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Table(name = "t_t_equipment_info")
public class EquipmentInfo implements Serializable {
    @Id
    private Integer id;

    /**
     * 固定资产号
     */
    @Column(name = "sort_id")
    private String sortId;

    /**
     * 商标
     */
    private String brand;

    /**
     * 设备型号
     */
    private String model;

    /**
     * 设备类型
     */
    @Column(name = "equipment_type")
    private String equipmentType;

    /**
     * 设备开始使用时间
     */
    @Column(name = "beginning_date")
    private Date beginningDate;

    /**
     * 地址
     */
    private String address;

    /**
     * 状态
     */
    private String state;

    /**
     * 备注
     */
    private String standard;
    
    
    
    private Integer price;
    
    
    
    private String factory;
    
    
    @Column(name = "factory_number")
    private Integer factoryNumber;
    
    
    @Column(name = "date_of_production")
    private Date dateofProduction;
    
    
    
    @Column(name = "date_of_buy")
    private Date dateofBuy;
    
    
    
    public String getEquipmentType() {
		return equipmentType;
	}

	public void setEquipmentType(String equipmentType) {
		this.equipmentType = equipmentType;
	}

	public String getStandard() {
		return standard;
	}

	public void setStandard(String standard) {
		this.standard = standard;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getFactory() {
		return factory;
	}

	public void setFactory(String factory) {
		this.factory = factory;
	}

	public Integer getFactoryNumber() {
		return factoryNumber;
	}

	public void setFactoryNumber(Integer factoryNumber) {
		this.factoryNumber = factoryNumber;
	}

	public Date getDateofProduction() {
		return dateofProduction;
	}

	public void setDateofProduction(Date dateofProduction) {
		this.dateofProduction = dateofProduction;
	}

	public Date getDateofBuy() {
		return dateofBuy;
	}

	public void setDateofBuy(Date dateofBuy) {
		this.dateofBuy = dateofBuy;
	}

	public Date getDestroyedDate() {
		return destroyedDate;
	}

	public void setDestroyedDate(Date destroyedDate) {
		this.destroyedDate = destroyedDate;
	}

	public Date getDateofRemove() {
		return dateofRemove;
	}

	public void setDateofRemove(Date dateofRemove) {
		this.dateofRemove = dateofRemove;
	}

	@Column(name = "destroyed_date")
    private Date destroyedDate;
    
    
    
    @Column(name = "date_of_remove")
    private Date dateofRemove;
    
    
    
    private String remark;

    /**
     * 创建时间
     */
    
    
    
    @Column(name = "create_date")
    private Date createDate;

    /**
     * 修改时间
     */
    @Column(name = "update_date")
    private Date updateDate;

    /**
     * 创建者
     */
    @Column(name = "create_by")
    private String createBy;

    /**
     * 修改者
     */
    @Column(name = "update_by")
    private String updateBy;

    private static final long serialVersionUID = 1L;

    /**
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取固定资产号
     *
     * @return sort_id - 固定资产号
     */
    public String getSortId() {
        return sortId;
    }

    /**
     * 设置固定资产号
     *
     * @param sortId 固定资产号
     */
    public void setSortId(String sortId) {
        this.sortId = sortId;
    }

    /**
     * 获取商标
     *
     * @return brand - 商标
     */
    public String getBrand() {
        return brand;
    }

    /**
     * 设置商标
     *
     * @param brand 商标
     */
    public void setBrand(String brand) {
        this.brand = brand;
    }

    /**
     * 获取设备型号
     *
     * @return model - 设备型号
     */
    public String getModel() {
        return model;
    }

    /**
     * 设置设备型号
     *
     * @param model 设备型号
     */
    public void setModel(String model) {
        this.model = model;
    }


    /**
     * 获取设备开始使用时间
     *
     * @return beginning_date - 设备开始使用时间
     */
    public Date getBeginningDate() {
        return beginningDate;
    }

    /**
     * 设置设备开始使用时间
     *
     * @param beginningDate 设备开始使用时间
     */
    public void setBeginningDate(Date beginningDate) {
        this.beginningDate = beginningDate;
    }

    /**
     * 获取地址
     *
     * @return address - 地址
     */
    public String getAddress() {
        return address;
    }

    /**
     * 设置地址
     *
     * @param address 地址
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * 获取状态
     *
     * @return state - 状态
     */
    public String getState() {
        return state;
    }

    /**
     * 设置状态
     *
     * @param state 状态
     */
    public void setState(String state) {
        this.state = state;
    }

    /**
     * 获取备注
     *
     * @return remark - 备注
     */
    public String getRemark() {
        return remark;
    }

    /**
     * 设置备注
     *
     * @param remark 备注
     */
    public void setRemark(String remark) {
        this.remark = remark;
    }

    /**
     * 获取创建时间
     *
     * @return create_date - 创建时间
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * 设置创建时间
     *
     * @param createDate 创建时间
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * 获取修改时间
     *
     * @return update_date - 修改时间
     */
    public Date getUpdateDate() {
        return updateDate;
    }

    /**
     * 设置修改时间
     *
     * @param updateDate 修改时间
     */
    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    /**
     * 获取创建者
     *
     * @return create_by - 创建者
     */
    public String getCreateBy() {
        return createBy;
    }

    /**
     * 设置创建者
     *
     * @param createBy 创建者
     */
    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    /**
     * 获取修改者
     *
     * @return update_by - 修改者
     */
    public String getUpdateBy() {
        return updateBy;
    }

    /**
     * 设置修改者
     *
     * @param updateBy 修改者
     */
    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }
}