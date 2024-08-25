  package com.priyank.sharedanalytics

class AndroidPlatform : Platform {
    override val name: String = "Android  ${android.os.Build.DEVICE} ${android.os.Build.VERSION.SDK_INT}"
}

actual fun getPlatform(): Platform = AndroidPlatform()