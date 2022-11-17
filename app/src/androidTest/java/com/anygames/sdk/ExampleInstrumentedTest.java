package com.anygames.sdk;

import android.content.Context;

import androidx.test.platform.app.InstrumentationRegistry;
import androidx.test.ext.junit.runners.AndroidJUnit4;

import org.junit.Test;
import org.junit.runner.RunWith;

import java.io.File;

import static org.junit.Assert.*;

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see <a href="http://d.android.com/tools/testing">Testing documentation</a>
 */
@RunWith(AndroidJUnit4.class)
public class ExampleInstrumentedTest {
    @Test
    public void useAppContext() {
        // Context of the app under test.
        Context appContext = InstrumentationRegistry.getInstrumentation().getTargetContext();
        assertEquals("com.anygames.sdk", appContext.getPackageName());
    }


    @Test
    public void test(){
        System.out.println("hello");
        String sourcePath = "F:/temp/nba/libqihoo2.so";
        File file = new File(sourcePath);
        String desPath = "E:\\temp\\nba\\out";
        String newName = "split";
        FileSplitAndCombine.splitFile(sourcePath, desPath, newName);
    }

}