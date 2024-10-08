plugins {
    alias(libs.plugins.kotlinMultiplatform)
    alias(libs.plugins.kmmbridge)
    alias(libs.plugins.androidLibrary)
    alias(libs.plugins.skie)
    `maven-publish`
}

kotlin {
    androidTarget {
        publishAllLibraryVariants()
        compilations.all{
            kotlinOptions{
                jvmTarget = "1.8"

            }
        }
    }
    
    listOf(
        iosX64(),
        iosArm64(),
        iosSimulatorArm64()
    ).forEach {
        it.binaries.framework {
            baseName = "shared"
            isStatic = true
        }
    }

    sourceSets {
        commonMain.dependencies {
            //put your multiplatform dependencies here
        }
        commonTest.dependencies {
            implementation(libs.kotlin.test)
        }
    }
}

android {
    namespace = "com.priyank.sharedanalytics"
    compileSdk = 34
    defaultConfig {
        minSdk = 24
    }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }
}
addGithubPackagesRepository()
kmmbridge {
    gitHubReleaseArtifacts()
    spm(swiftToolVersion = "5.8") {
        iOS { v("14") }
    }
}
