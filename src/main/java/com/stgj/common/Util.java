package com.stgj.common;

import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.UUID;

/**
 * Created by gfj43958 on 2017/5/9.
 * time:21:32
 * author:GuoFangjun
 */
public class Util {

    /**
     * 工具:文件上传方法
     * @param file
     * @param request
     * @return
     */
    public static Result<String> uploadFile(MultipartFile file, HttpServletRequest request) {
        Result<String> result = new Result<String>();
        result.setErrorMsg("文件上传失败");
        String fileRealName = file.getOriginalFilename();
        if(fileRealName==null||"".equals(fileRealName)){
            return result;
        }
        int pointIndex = fileRealName.indexOf(".");                        //点号的位置
        String fileSuffix = fileRealName.substring(pointIndex);             //截取文件后缀
        UUID FileId = UUID.randomUUID();                        //生成文件的前缀包含连字符
        String savedFileName = FileId.toString().replace("-", "").concat(fileSuffix);       //文件存取名
        String savedDir = request.getSession().getServletContext().getRealPath("upload"); //获取服务器指定文件存取路径
        File savedFile = new File(savedDir, savedFileName);
        try {
            boolean isCreateSuccess = savedFile.createNewFile();
            if (isCreateSuccess) {
                file.transferTo(savedFile);  //转存文件
                result.setSuccess(true);
                result.setData("/upload/"+savedFileName);
                return result;
            }
            return result;
        } catch (Exception e) {
            return result;
        }

    }
}
