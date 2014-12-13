.class public Lnet/cactii/flash2/FlashDevice;
.super Ljava/lang/Object;
.source "FlashDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/cactii/flash2/FlashDevice$InitializationException;
    }
.end annotation


# static fields
.field private static mFlashDevice:Ljava/lang/String;

.field private static mFlashDeviceLuminosity:Ljava/lang/String;

.field private static mFlashDeviceLuminosity2:Ljava/lang/String;

.field private static mUseCameraInterface:Z

.field private static mValueDeathRay:I

.field private static mValueHigh:I

.field private static mValueLow:I

.field private static mValueOff:I

.field private static mValueOn:I

.field private static sInstance:Lnet/cactii/flash2/FlashDevice;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mFlashDeviceLuminosityWriter:Ljava/io/FileWriter;

.field private mFlashDeviceLuminosityWriter2:Ljava/io/FileWriter;

.field private mFlashDeviceWriter:Ljava/io/FileWriter;

.field private mFlashMode:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTorchService:Landroid/hardware/ITorchService;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceWriter:Ljava/io/FileWriter;

    .line 61
    iput-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter:Ljava/io/FileWriter;

    .line 62
    iput-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter2:Ljava/io/FileWriter;

    .line 64
    const/4 v2, 0x0

    iput v2, p0, Lnet/cactii/flash2/FlashDevice;->mFlashMode:I

    .line 66
    iput-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    .line 68
    iput-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lnet/cactii/flash2/FlashDevice;->mValueOff:I

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lnet/cactii/flash2/FlashDevice;->mValueOn:I

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lnet/cactii/flash2/FlashDevice;->mValueLow:I

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lnet/cactii/flash2/FlashDevice;->mValueHigh:I

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lnet/cactii/flash2/FlashDevice;->mValueDeathRay:I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f07

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lnet/cactii/flash2/FlashDevice;->mFlashDevice:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosity:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosity2:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lnet/cactii/flash2/FlashDevice;->mUseCameraInterface:Z

    .line 87
    const-string v2, "torch"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 88
    .local v1, torchBinder:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/hardware/ITorchService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ITorchService;

    move-result-object v2

    iput-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mTorchService:Landroid/hardware/ITorchService;

    .line 90
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 91
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "Torch"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 92
    return-void
.end method

.method private static findBackFacingCamera()I
    .locals 4

    .prologue
    .line 304
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 305
    .local v2, numberOfCameras:I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 306
    .local v0, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 307
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 308
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 312
    .end local v1           #i:I
    :goto_1
    return v1

    .line 306
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private initializeCamera()Landroid/hardware/Camera;
    .locals 4

    .prologue
    .line 316
    invoke-static {}, Lnet/cactii/flash2/FlashDevice;->findBackFacingCamera()I

    move-result v0

    .line 317
    .local v0, cameraId:I
    if-gez v0, :cond_0

    .line 318
    const-string v1, "TorchDevice"

    const-string v2, "No back facing camera found"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v1, Lnet/cactii/flash2/FlashDevice$InitializationException;

    const-string v2, "No camera available"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnet/cactii/flash2/FlashDevice$InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 322
    :cond_0
    invoke-direct {p0, v0}, Lnet/cactii/flash2/FlashDevice;->onStartTorch(I)V

    .line 323
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized instance(Landroid/content/Context;)Lnet/cactii/flash2/FlashDevice;
    .locals 3
    .parameter "context"

    .prologue
    .line 95
    const-class v1, Lnet/cactii/flash2/FlashDevice;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/cactii/flash2/FlashDevice;->sInstance:Lnet/cactii/flash2/FlashDevice;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lnet/cactii/flash2/FlashDevice;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/cactii/flash2/FlashDevice;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/cactii/flash2/FlashDevice;->sInstance:Lnet/cactii/flash2/FlashDevice;

    .line 98
    :cond_0
    sget-object v0, Lnet/cactii/flash2/FlashDevice;->sInstance:Lnet/cactii/flash2/FlashDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onStartTorch(I)V
    .locals 4
    .parameter "cameraId"

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 287
    .local v0, result:Z
    :try_start_0
    iget-object v1, p0, Lnet/cactii/flash2/FlashDevice;->mTorchService:Landroid/hardware/ITorchService;

    invoke-interface {v1, p1}, Landroid/hardware/ITorchService;->onStartingTorch(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 290
    :goto_0
    if-nez v0, :cond_0

    .line 291
    new-instance v1, Lnet/cactii/flash2/FlashDevice$InitializationException;

    const-string v2, "Camera is busy"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnet/cactii/flash2/FlashDevice$InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 293
    :cond_0
    return-void

    .line 288
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onStopTorch()V
    .locals 1

    .prologue
    .line 297
    :try_start_0
    iget-object v0, p0, Lnet/cactii/flash2/FlashDevice;->mTorchService:Landroid/hardware/ITorchService;

    invoke-interface {v0}, Landroid/hardware/ITorchService;->onStopTorch()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized setFlashMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    const-string v3, "TorchDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFlashMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_1

    .line 282
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 107
    :cond_1
    move v2, p1

    .line 108
    .local v2, value:I
    packed-switch p1, :pswitch_data_0

    .line 128
    :goto_1
    :pswitch_0
    :try_start_1
    sget-boolean v3, Lnet/cactii/flash2/FlashDevice;->mUseCameraInterface:Z

    if-eqz v3, :cond_c

    .line 129
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_2

    .line 130
    invoke-direct {p0}, Lnet/cactii/flash2/FlashDevice;->initializeCamera()Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    .line 132
    :cond_2
    if-nez v2, :cond_a

    .line 133
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 134
    .local v1, params:Landroid/hardware/Camera$Parameters;
    const-string v3, "off"

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 135
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 136
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 137
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 138
    const/4 v3, 0x0

    iput-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    .line 139
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_3

    .line 140
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->release()V

    .line 141
    const/4 v3, 0x0

    iput-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 143
    :cond_3
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 144
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 271
    .end local v1           #params:Landroid/hardware/Camera$Parameters;
    :cond_4
    :goto_2
    iput p1, p0, Lnet/cactii/flash2/FlashDevice;->mFlashMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    if-nez p1, :cond_0

    .line 279
    :try_start_2
    invoke-direct {p0}, Lnet/cactii/flash2/FlashDevice;->onStopTorch()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 102
    .end local v2           #value:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 110
    .restart local v2       #value:I
    :pswitch_1
    :try_start_3
    sget v3, Lnet/cactii/flash2/FlashDevice;->mValueDeathRay:I

    if-ltz v3, :cond_5

    .line 111
    sget v2, Lnet/cactii/flash2/FlashDevice;->mValueDeathRay:I

    goto :goto_1

    .line 112
    :cond_5
    sget v3, Lnet/cactii/flash2/FlashDevice;->mValueHigh:I

    if-ltz v3, :cond_6

    .line 113
    sget v2, Lnet/cactii/flash2/FlashDevice;->mValueHigh:I

    goto :goto_1

    .line 115
    :cond_6
    const/4 v2, 0x0

    .line 116
    const-string v3, "TorchDevice"

    const-string v4, "Broken device configuration"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/io/IOException;
    :try_start_4
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 274
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 276
    :cond_7
    new-instance v3, Lnet/cactii/flash2/FlashDevice$InitializationException;

    const-string v4, "Can\'t open flash device"

    invoke-direct {v3, v4, v0}, Lnet/cactii/flash2/FlashDevice$InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 278
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    if-nez p1, :cond_8

    .line 279
    :try_start_5
    invoke-direct {p0}, Lnet/cactii/flash2/FlashDevice;->onStopTorch()V

    :cond_8
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 120
    :pswitch_2
    :try_start_6
    sget v3, Lnet/cactii/flash2/FlashDevice;->mValueOn:I

    if-ltz v3, :cond_9

    .line 121
    sget v2, Lnet/cactii/flash2/FlashDevice;->mValueOn:I

    goto/16 :goto_1

    .line 123
    :cond_9
    const/4 v2, 0x0

    .line 124
    const-string v3, "TorchDevice"

    const-string v4, "Broken device configuration"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 147
    :cond_a
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v3, :cond_b

    .line 149
    new-instance v3, Landroid/graphics/SurfaceTexture;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 150
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    iget-object v4, p0, Lnet/cactii/flash2/FlashDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 151
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V

    .line 153
    :cond_b
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 154
    .restart local v1       #params:Landroid/hardware/Camera$Parameters;
    const-string v3, "torch"

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 156
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_4

    .line 157
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_2

    .line 162
    .end local v1           #params:Landroid/hardware/Camera$Parameters;
    :cond_c
    sget-object v3, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosity:Ljava/lang/String;

    if-eqz v3, :cond_19

    sget-object v3, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosity:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_19

    .line 164
    if-eqz p1, :cond_d

    .line 165
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lnet/cactii/flash2/FlashDevice;->onStartTorch(I)V

    .line 168
    :cond_d
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceWriter:Ljava/io/FileWriter;

    if-nez v3, :cond_e

    .line 169
    new-instance v3, Ljava/io/FileWriter;

    sget-object v4, Lnet/cactii/flash2/FlashDevice;->mFlashDevice:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceWriter:Ljava/io/FileWriter;

    .line 171
    :cond_e
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter:Ljava/io/FileWriter;

    if-nez v3, :cond_f

    .line 172
    new-instance v3, Ljava/io/FileWriter;

    sget-object v4, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosity:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter:Ljava/io/FileWriter;

    .line 174
    :cond_f
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter2:Ljava/io/FileWriter;

    if-nez v3, :cond_10

    sget-object v3, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosity2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_10

    .line 175
    new-instance v3, Ljava/io/FileWriter;

    sget-object v4, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosity2:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter2:Ljava/io/FileWriter;

    .line 178
    :cond_10
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceWriter:Ljava/io/FileWriter;

    sget v4, Lnet/cactii/flash2/FlashDevice;->mValueOn:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 179
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceWriter:Ljava/io/FileWriter;

    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 181
    packed-switch p1, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_2

    .line 194
    :pswitch_4
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter:Ljava/io/FileWriter;

    sget v4, Lnet/cactii/flash2/FlashDevice;->mValueLow:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 195
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter:Ljava/io/FileWriter;

    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 196
    const/4 v3, 0x0

    iput-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter:Ljava/io/FileWriter;

    .line 197
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter2:Ljava/io/FileWriter;

    if-eqz v3, :cond_11

    .line 198
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter2:Ljava/io/FileWriter;

    sget v4, Lnet/cactii/flash2/FlashDevice;->mValueLow:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 199
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter2:Ljava/io/FileWriter;

    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 200
    const/4 v3, 0x0

    iput-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter2:Ljava/io/FileWriter;

    .line 202
    :cond_11
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceWriter:Ljava/io/FileWriter;

    sget v4, Lnet/cactii/flash2/FlashDevice;->mValueOff:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 203
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceWriter:Ljava/io/FileWriter;

    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 204
    const/4 v3, 0x0

    iput-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceWriter:Ljava/io/FileWriter;

    .line 205
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 206
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_2

    .line 183
    :pswitch_5
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter:Ljava/io/FileWriter;

    sget v4, Lnet/cactii/flash2/FlashDevice;->mValueLow:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 184
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter:Ljava/io/FileWriter;

    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 185
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter2:Ljava/io/FileWriter;

    if-eqz v3, :cond_12

    .line 186
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter2:Ljava/io/FileWriter;

    sget v4, Lnet/cactii/flash2/FlashDevice;->mValueLow:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 187
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter2:Ljava/io/FileWriter;

    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 189
    :cond_12
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_4

    .line 190
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_2

    .line 210
    :pswitch_6
    sget v3, Lnet/cactii/flash2/FlashDevice;->mValueDeathRay:I

    if-ltz v3, :cond_14

    .line 211
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter:Ljava/io/FileWriter;

    sget v4, Lnet/cactii/flash2/FlashDevice;->mValueDeathRay:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 212
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter:Ljava/io/FileWriter;

    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 213
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter2:Ljava/io/FileWriter;

    if-eqz v3, :cond_13

    .line 214
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter2:Ljava/io/FileWriter;

    sget v4, Lnet/cactii/flash2/FlashDevice;->mValueDeathRay:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter2:Ljava/io/FileWriter;

    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 217
    :cond_13
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_4

    .line 218
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_2

    .line 220
    :cond_14
    sget v3, Lnet/cactii/flash2/FlashDevice;->mValueHigh:I

    if-ltz v3, :cond_16

    .line 221
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter:Ljava/io/FileWriter;

    sget v4, Lnet/cactii/flash2/FlashDevice;->mValueHigh:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 222
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter:Ljava/io/FileWriter;

    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 223
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter2:Ljava/io/FileWriter;

    if-eqz v3, :cond_15

    .line 224
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter2:Ljava/io/FileWriter;

    sget v4, Lnet/cactii/flash2/FlashDevice;->mValueHigh:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 225
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter2:Ljava/io/FileWriter;

    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 227
    :cond_15
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_4

    .line 228
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_2

    .line 231
    :cond_16
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter:Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 232
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter:Ljava/io/FileWriter;

    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 233
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter2:Ljava/io/FileWriter;

    if-eqz v3, :cond_17

    .line 234
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter2:Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 235
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceLuminosityWriter2:Ljava/io/FileWriter;

    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 237
    :cond_17
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 238
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 240
    :cond_18
    const-string v3, "TorchDevice"

    const-string v4, "Broken device configuration"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 246
    :cond_19
    if-eqz p1, :cond_1a

    .line 247
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lnet/cactii/flash2/FlashDevice;->onStartTorch(I)V

    .line 251
    :cond_1a
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceWriter:Ljava/io/FileWriter;

    if-nez v3, :cond_1b

    .line 252
    new-instance v3, Ljava/io/FileWriter;

    sget-object v4, Lnet/cactii/flash2/FlashDevice;->mFlashDevice:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceWriter:Ljava/io/FileWriter;

    .line 255
    :cond_1b
    iget v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashMode:I

    if-eq p1, v3, :cond_1c

    .line 256
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceWriter:Ljava/io/FileWriter;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 257
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceWriter:Ljava/io/FileWriter;

    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 258
    if-eqz p1, :cond_1c

    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 259
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 262
    :cond_1c
    if-nez p1, :cond_4

    .line 263
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceWriter:Ljava/io/FileWriter;

    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 264
    const/4 v3, 0x0

    iput-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mFlashDeviceWriter:Ljava/io/FileWriter;

    .line 265
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 266
    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 181
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method
