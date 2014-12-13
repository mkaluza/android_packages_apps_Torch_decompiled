.class public Lnet/cactii/flash2/TorchService;
.super Landroid/app/Service;
.source "TorchService.java"


# instance fields
.field private mFlashDevice:Lnet/cactii/flash2/FlashDevice;

.field private mFlashMode:I

.field private final mHandler:Landroid/os/Handler;

.field private mUseCameraInterface:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    new-instance v0, Lnet/cactii/flash2/TorchService$1;

    invoke-direct {v0, p0}, Lnet/cactii/flash2/TorchService$1;-><init>(Lnet/cactii/flash2/TorchService;)V

    iput-object v0, p0, Lnet/cactii/flash2/TorchService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lnet/cactii/flash2/TorchService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lnet/cactii/flash2/TorchService;->setFlashModeOrStop()V

    return-void
.end method

.method private getNotification()Landroid/app/Notification;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 93
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lnet/cactii/flash2/MainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v5, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 95
    .local v0, contentIntent:Landroid/app/PendingIntent;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "net.cactii.flash2.TOGGLE_FLASHLIGHT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 97
    .local v2, turnOffIntent:Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f070011

    invoke-virtual {p0, v4}, Lnet/cactii/flash2/TorchService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f020003

    const v5, 0x7f070012

    invoke-virtual {p0, v5}, Lnet/cactii/flash2/TorchService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 107
    .local v1, notification:Landroid/app/Notification;
    return-object v1
.end method

.method private setFlashModeOrStop()V
    .locals 4

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Lnet/cactii/flash2/TorchService;->mFlashDevice:Lnet/cactii/flash2/FlashDevice;

    iget v2, p0, Lnet/cactii/flash2/TorchService;->mFlashMode:I

    invoke-virtual {v1, v2}, Lnet/cactii/flash2/FlashDevice;->setFlashMode(I)V
    :try_end_0
    .catch Lnet/cactii/flash2/FlashDevice$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Lnet/cactii/flash2/FlashDevice$InitializationException;
    const-string v1, "TorchRoot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set flash mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnet/cactii/flash2/TorchService;->mFlashMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    invoke-virtual {p0}, Lnet/cactii/flash2/TorchService;->stopSelf()V

    goto :goto_0
.end method

.method private updateState(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.cactii.flash2.TORCH_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "state"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Lnet/cactii/flash2/TorchService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 128
    return-void

    .line 126
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 53
    invoke-static {p0}, Lnet/cactii/flash2/FlashDevice;->instance(Landroid/content/Context;)Lnet/cactii/flash2/FlashDevice;

    move-result-object v0

    iput-object v0, p0, Lnet/cactii/flash2/TorchService;->mFlashDevice:Lnet/cactii/flash2/FlashDevice;

    .line 54
    invoke-virtual {p0}, Lnet/cactii/flash2/TorchService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lnet/cactii/flash2/TorchService;->mUseCameraInterface:Z

    .line 55
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/cactii/flash2/TorchService;->stopForeground(Z)V

    .line 86
    iget-object v0, p0, Lnet/cactii/flash2/TorchService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 87
    invoke-static {p0}, Lnet/cactii/flash2/FlashDevice;->instance(Landroid/content/Context;)Lnet/cactii/flash2/FlashDevice;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/cactii/flash2/FlashDevice;->setFlashMode(I)V

    .line 88
    invoke-direct {p0, v2}, Lnet/cactii/flash2/TorchService;->updateState(Z)V

    .line 89
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 90
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v1, 0x1

    .line 59
    const-string v0, "TorchRoot"

    const-string v2, "Starting torch"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-nez p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lnet/cactii/flash2/TorchService;->stopSelf()V

    .line 63
    const/4 v1, 0x2

    .line 80
    :goto_0
    return v1

    .line 66
    :cond_0
    const-string v0, "bright"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_1
    iput v0, p0, Lnet/cactii/flash2/TorchService;->mFlashMode:I

    .line 68
    iget-boolean v0, p0, Lnet/cactii/flash2/TorchService;->mUseCameraInterface:Z

    if-eqz v0, :cond_2

    .line 72
    invoke-direct {p0}, Lnet/cactii/flash2/TorchService;->setFlashModeOrStop()V

    .line 77
    :goto_2
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lnet/cactii/flash2/TorchService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-direct {p0}, Lnet/cactii/flash2/TorchService;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lnet/cactii/flash2/TorchService;->startForeground(ILandroid/app/Notification;)V

    .line 78
    invoke-direct {p0, v1}, Lnet/cactii/flash2/TorchService;->updateState(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 66
    goto :goto_1

    .line 74
    :cond_2
    iget-object v0, p0, Lnet/cactii/flash2/TorchService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method
