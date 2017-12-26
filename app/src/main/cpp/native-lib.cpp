#include <jni.h>

extern "C"
JNIEXPORT jstring JNICALL
Java_com_shaoxiaofei_sky_mktest_MainActivity_stringFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    char hello[10] = "hello,mk";
    return env->NewStringUTF(hello);
}
