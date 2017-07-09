package com.wll.test.hfjsp.chapter13;

import javax.servlet.ServletOutputStream;
import javax.servlet.WriteListener;
import java.io.IOException;
import java.util.zip.GZIPOutputStream;

/**
 * This helper class is a Decorator on the ServletOutputStream abstract
 * class which delegates the real work of compressing the generated content
 * using a standard GZIP output stream.
 * <p>
 * There is only one abstract method in the SOS class which this Decorator
 * must implement: write(int).  This is where all of the delegation magic
 * occurs.
 */
public class GZIPServletOutputStream  extends ServletOutputStream {

    /**
     * Keep a reference to raw GZIP stream.
     * This instance variable is package-private to allow the compression
     * response wrapper access to this variable.
     */
     GZIPOutputStream internalGzipOS;

    /**
     * Decorator constructor
     */
    public GZIPServletOutputStream(ServletOutputStream sos) throws IOException {
        this.internalGzipOS = new GZIPOutputStream(sos);
    }

    /**
     * This method implements the compression decoration by delegating the
     * write() call to the GZIP compression stream, which is wrapping the
     * original servlet output stream, which is (ultimately) wrapping the
     * TCP network output stream to the client.
     */
    public void write(int param) throws java.io.IOException {
        internalGzipOS.write(param);
    }

    @Override
    public boolean isReady() {
        return false;
    }

    @Override
    public void setWriteListener(WriteListener writeListener) {
    }
}