.class public Lnet/cactii/flash2/TorchSwitch;
.super Landroid/content/BroadcastReceiver;
.source "TorchSwitch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private torchServiceRunning(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    .line 63
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 64
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v5, 0x64

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 66
    .local v4, svcList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 67
    .local v2, serviceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 68
    .local v3, serviceName:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".TorchService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".RootTorchService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    :cond_1
    const/4 v5, 0x1

    .line 72
    .end local v2           #serviceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v3           #serviceName:Landroid/content/ComponentName;
    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "net.cactii.flash2.TOGGLE_FLASHLIGHT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 45
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 46
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v4, "bright"

    const-string v5, "bright"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 47
    .local v0, bright:Z
    const-string v4, "stop"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 49
    .local v3, stop:Z
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lnet/cactii/flash2/TorchService;

    invoke-direct {v1, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v1, i:Landroid/content/Intent;
    if-nez v3, :cond_0

    invoke-direct {p0, p1}, Lnet/cactii/flash2/TorchSwitch;->torchServiceRunning(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 51
    :cond_0
    if-eqz v3, :cond_1

    .line 52
    invoke-static {p1}, Lnet/cactii/flash2/FlashDevice;->instance(Landroid/content/Context;)Lnet/cactii/flash2/FlashDevice;

    move-result-object v4

    invoke-virtual {v4, v6}, Lnet/cactii/flash2/FlashDevice;->setFlashMode(I)V

    .line 54
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 60
    .end local v0           #bright:Z
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    .end local v3           #stop:Z
    :cond_2
    :goto_0
    return-void

    .line 56
    .restart local v0       #bright:Z
    .restart local v1       #i:Landroid/content/Intent;
    .restart local v2       #prefs:Landroid/content/SharedPreferences;
    .restart local v3       #stop:Z
    :cond_3
    const-string v4, "bright"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
