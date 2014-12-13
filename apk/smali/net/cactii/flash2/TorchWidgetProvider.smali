.class public Lnet/cactii/flash2/TorchWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "TorchWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;
    }
.end annotation


# static fields
.field private static sInstance:Lnet/cactii/flash2/TorchWidgetProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 44
    return-void
.end method

.method static declared-synchronized getInstance()Lnet/cactii/flash2/TorchWidgetProvider;
    .locals 2

    .prologue
    .line 38
    const-class v1, Lnet/cactii/flash2/TorchWidgetProvider;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/cactii/flash2/TorchWidgetProvider;->sInstance:Lnet/cactii/flash2/TorchWidgetProvider;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lnet/cactii/flash2/TorchWidgetProvider;

    invoke-direct {v0}, Lnet/cactii/flash2/TorchWidgetProvider;-><init>()V

    sput-object v0, Lnet/cactii/flash2/TorchWidgetProvider;->sInstance:Lnet/cactii/flash2/TorchWidgetProvider;

    .line 41
    :cond_0
    sget-object v0, Lnet/cactii/flash2/TorchWidgetProvider;->sInstance:Lnet/cactii/flash2/TorchWidgetProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    const/4 v3, 0x0

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v0, launchIntent:Landroid/content/Intent;
    const-class v1, Lnet/cactii/flash2/TorchWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 70
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 72
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    .line 77
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 78
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 79
    .local v2, mPrefs:Landroid/content/SharedPreferences;
    const-string v6, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, parts:[Ljava/lang/String;
    aget-object v6, v3, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 82
    .local v5, widgetId:I
    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 84
    .local v0, buttonId:I
    if-nez v0, :cond_0

    .line 85
    new-instance v4, Landroid/content/Intent;

    const-string v6, "net.cactii.flash2.TOGGLE_FLASHLIGHT"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v4, pendingIntent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    const-string v6, "bright"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "widget_bright_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 92
    .end local v4           #pendingIntent:Landroid/content/Intent;
    :cond_0
    const-wide/16 v6, 0x32

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    invoke-virtual {p0, p1}, Lnet/cactii/flash2/TorchWidgetProvider;->updateAllStates(Landroid/content/Context;)V

    .line 101
    .end local v0           #buttonId:I
    .end local v3           #parts:[Ljava/lang/String;
    .end local v5           #widgetId:I
    :cond_1
    :goto_1
    return-void

    .line 93
    .restart local v0       #buttonId:I
    .restart local v3       #parts:[Ljava/lang/String;
    .restart local v5       #widgetId:I
    :catch_0
    move-exception v1

    .line 95
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v0           #buttonId:I
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v3           #parts:[Ljava/lang/String;
    .end local v5           #widgetId:I
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "net.cactii.flash2.TORCH_STATE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 99
    invoke-virtual {p0, p1}, Lnet/cactii/flash2/TorchWidgetProvider;->updateAllStates(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 63
    move-object v1, p3

    .local v1, arr$:[I
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, v1, v2

    .line 64
    .local v0, appWidgetId:I
    invoke-virtual {p0, p1, v0}, Lnet/cactii/flash2/TorchWidgetProvider;->updateState(Landroid/content/Context;I)V

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v0           #appWidgetId:I
    :cond_0
    return-void
.end method

.method public updateAllStates(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 104
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 105
    .local v0, am:Landroid/appwidget/AppWidgetManager;
    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 107
    .local v2, appWidgetIds:[I
    move-object v3, v2

    .local v3, arr$:[I
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget v1, v3, v4

    .line 108
    .local v1, appWidgetId:I
    invoke-virtual {p0, p1, v1}, Lnet/cactii/flash2/TorchWidgetProvider;->updateState(Landroid/content/Context;I)V

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 109
    .end local v1           #appWidgetId:I
    :cond_0
    return-void
.end method

.method updateState(Landroid/content/Context;I)V
    .locals 10
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    const v9, 0x7f0c0005

    const/4 v5, 0x0

    .line 112
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f030004

    invoke-direct {v4, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 113
    .local v4, views:Landroid/widget/RemoteViews;
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 114
    .local v2, prefs:Landroid/content/SharedPreferences;
    const/4 v6, 0x0

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "net.cactii.flash2.TORCH_STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 116
    .local v3, stateIntent:Landroid/content/Intent;
    if-eqz v3, :cond_1

    const-string v6, "state"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    .line 118
    .local v1, on:Z
    :goto_0
    const v6, 0x7f0c0004

    invoke-static {p1, p2}, Lnet/cactii/flash2/TorchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 120
    if-eqz v1, :cond_2

    .line 121
    sget-object v6, Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;->ON:Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;

    invoke-virtual {v6}, Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;->getImgDrawable()I

    move-result v6

    invoke-virtual {v4, v9, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 126
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "widget_bright_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 127
    const v5, 0x7f0c0006

    const v6, 0x7f07000d

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 130
    :cond_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 131
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0, p2, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 132
    return-void

    .end local v0           #gm:Landroid/appwidget/AppWidgetManager;
    .end local v1           #on:Z
    :cond_1
    move v1, v5

    .line 116
    goto :goto_0

    .line 123
    .restart local v1       #on:Z
    :cond_2
    sget-object v6, Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;->OFF:Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;

    invoke-virtual {v6}, Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;->getImgDrawable()I

    move-result v6

    invoke-virtual {v4, v9, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method
