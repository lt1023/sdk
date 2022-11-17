package com.anygames.sdk;


import java.io.*;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

/**
 * 1.把大文件按照指定大小分割成多个小文件
 * 2.把多个小文件分割为大文件
 * 测试用例@com.xm.FileSplitAndCombineTest
 */
public class FileSplitAndCombine {

    private static int THOUSAND_TWENTY_FOUR= 1024; // one thousand and twenty-four



    /**
     * 把大文件拆分为多个小文件
     *
     * @param sourcePath 需要被拆分的文件路径
     * @param desPath    拆分后的文件应该存放的文件路径
     * @param newName    每一个小文件名
     */
    public static void splitFile(String sourcePath, String desPath, String newName) {

        try (BufferedInputStream bis = new BufferedInputStream(new FileInputStream(new File(sourcePath)))) {
            for (int i = 0; ; i++) {
                String filePath = desPath + File.separatorChar +newName+"_" +i;
                if (singleSplitFile(bis, filePath, THOUSAND_TWENTY_FOUR)) break;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    /**
     * @param bis 输入流
     * @param filePath       新文件存储的文件夹路径
     * @param partitionSize 每个文件的大小 单位MB
     * @throws IOException
     */
    private static boolean singleSplitFile(BufferedInputStream bis, String filePath,int partitionSize) throws IOException {
        int length = partitionSize * THOUSAND_TWENTY_FOUR * THOUSAND_TWENTY_FOUR;
        byte[] buffer = new byte[THOUSAND_TWENTY_FOUR];
        int tempLength;

        System.out.println(nowTime() + "----->>>> begin split " + filePath);
        try (BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(new File(filePath)))) {
            while ((tempLength = bis.read(buffer)) != -1) {
                bos.write(buffer, 0, tempLength);
                if ((length = length - tempLength) <= 0) break;
            }
        }
        System.out.println(nowTime() + "<<<<----- yet finish split" + filePath);

        return tempLength < 0;
    }

    /**
     * 把指定文件夹内的文件合并为一个文件
     *
     * @param sourcePath 需要被合并的文件所在的文件中路径
     * @param desPath    合并后的文件存放位置
     */
    public static void combineFile(String sourcePath, String desPath) {

        List<String> sortedFileNames = sortFilesName(sourcePath);
        if (sortedFileNames == null) {
            System.out.println(sourcePath+"路径下不存在文件夹");
            return;
        }

        try (BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(new File(desPath)))) {
            for (String sortedFileName : sortedFileNames) {
                copyFile(bos, sourcePath + File.separatorChar + sortedFileName);
            }
            System.out.println("all finish...");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 把目标文件合并到输出流中
     *
     * @param bos 缓冲输出流
     * @param des 目标文件路径
     * @throws IOException
     */
    private static void copyFile(BufferedOutputStream bos, String des) throws IOException {

        try (BufferedInputStream bis = new BufferedInputStream(new FileInputStream(new File(des)))) {
            System.out.println(nowTime()+ "------>>>>"+des + "开始合并");
            byte[] bytes = new byte[1024];
            int length;
            while ((length = bis.read(bytes)) != -1) {
                bos.write(bytes, 0, length);
            }
            System.out.println(nowTime()+ "<<<<------"+des + "合并完成");
        }
    }

    /**
     * 对指定文件夹内的文件名进行排序 （增序）
     *
     * @param fileDir
     * @return
     */
    private static List<String> sortFilesName(String fileDir) {
        File file = new File(fileDir);
        File[] files = file.listFiles();
        if (null == files || files.length == 0) {
            return null;
        }
        Pattern compile = Pattern.compile("^.+_\\d+$");
        return Arrays.stream(files).filter(file1 -> {
            if (file1.isDirectory()){
                System.out.println("waring: "+ file1.getName() +"不是一个文件");
                return false;
            }
            String file1Name = file1.getName();
            Matcher matcher = compile.matcher(file1Name);
            if (!matcher.find()){
                System.out.println("waring：文件名 "+file1Name+"不符合 文件名_数字的命名规范");
                return false;
            }
            return true;
        }).map(File::getName)
                .sorted((fileName1,fileName2)->{
                    String[] split1 = fileName1.split("_");
                    String[] split2 = fileName2.split("_");
                    return Integer.parseInt(split1[split1.length - 1])-Integer.parseInt(split2[split2.length - 1]);
                }).collect(Collectors.toList());
    }

    private static String nowTime(){
        return new Date().toLocaleString();
    }
}

