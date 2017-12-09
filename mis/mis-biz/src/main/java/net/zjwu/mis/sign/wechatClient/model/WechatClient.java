package net.zjwu.mis.sign.wechatClient.model;

import java.io.Serializable;
import javax.persistence.*;

@Table(name = "t_t_wechat_client")
public class WechatClient implements Serializable {
    @Id
    private Integer id;

    /**
     * openId
     */
    @Column(name = "open_id")
    private String openId;

    /**
     * 客户ID
     */
    @Column(name = "client_id")
    private Integer clientId;

    /**
     * 学号
     */
    private String cnumber;

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
     * 获取openId
     *
     * @return open_id - openId
     */
    public String getOpenId() {
        return openId;
    }

    /**
     * 设置openId
     *
     * @param openId openId
     */
    public void setOpenId(String openId) {
        this.openId = openId;
    }

    /**
     * 获取客户ID
     *
     * @return client_id - 客户ID
     */
    public Integer getClientId() {
        return clientId;
    }

    /**
     * 设置客户ID
     *
     * @param clientId 客户ID
     */
    public void setClientId(Integer clientId) {
        this.clientId = clientId;
    }

    /**
     * 获取学号
     *
     * @return cnumber - 学号
     */
    public String getCnumber() {
        return cnumber;
    }

    /**
     * 设置学号
     *
     * @param cnumber 学号
     */
    public void setCnumber(String cnumber) {
        this.cnumber = cnumber;
    }
}