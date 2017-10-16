package com.lanou.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import java.io.File;
import java.io.IOException;

/**
 * Created by dllo on 17/10/13.
 */
public class MultipleUploadFieldAction extends ActionSupport {

    private File[] file;
    private String[] fileFileName;

    public String multipleUpload(){

        //获取当前项目files路径
        String path = ServletActionContext.getServletContext().getRealPath("files");
        File destDirectory = new File(path);
        //如果目的文件路径不存在, 需要创建
        if (!destDirectory.exists() || !destDirectory.isDirectory()){
            destDirectory.mkdirs();
        }

        for (int i = 0; i < file.length; i++) {
            File f = new File(destDirectory,fileFileName[i]);

            try {
                FileUtils.copyFile(file[i],f);
            } catch (IOException e) {
                e.printStackTrace();
            }

        }

        return SUCCESS;
    }

    public File[] getFile() {
        return file;
    }

    public void setFile(File[] file) {
        this.file = file;
    }

    public String[] getFileFileName() {
        return fileFileName;
    }

    public void setFileFileName(String[] fileFileName) {
        this.fileFileName = fileFileName;
    }
}
