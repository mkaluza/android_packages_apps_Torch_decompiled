.class public Lnet/cactii/flash2/WidgetOptionsActivity;
.super Landroid/preference/PreferenceActivity;
.source "WidgetOptionsActivity.java"


# instance fields
.field private mAppWidgetId:I

.field private mHasBrightSetting:Z

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/cactii/flash2/WidgetOptionsActivity;->mHasBrightSetting:Z

    return-void
.end method


# virtual methods
.method addWidget()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 71
    iget-object v7, p0, Lnet/cactii/flash2/WidgetOptionsActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 73
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "widget_bright_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lnet/cactii/flash2/WidgetOptionsActivity;->mAppWidgetId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lnet/cactii/flash2/WidgetOptionsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "widget_bright"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    invoke-virtual {p0}, Lnet/cactii/flash2/WidgetOptionsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 79
    .local v1, context:Landroid/content/Context;
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f030004

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 80
    .local v6, views:Landroid/widget/RemoteViews;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v3, launchIntent:Landroid/content/Intent;
    const-class v7, Lnet/cactii/flash2/TorchWidgetProvider;

    invoke-virtual {v3, v1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 82
    const-string v7, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "custom:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lnet/cactii/flash2/WidgetOptionsActivity;->mAppWidgetId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 85
    invoke-static {v1, v10, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 87
    .local v4, pi:Landroid/app/PendingIntent;
    const v7, 0x7f0c0004

    invoke-virtual {v6, v7, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 89
    iget-object v7, p0, Lnet/cactii/flash2/WidgetOptionsActivity;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "widget_bright_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lnet/cactii/flash2/WidgetOptionsActivity;->mAppWidgetId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 90
    const v7, 0x7f0c0006

    const v8, 0x7f07000d

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 93
    :cond_0
    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 94
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    iget v7, p0, Lnet/cactii/flash2/WidgetOptionsActivity;->mAppWidgetId:I

    invoke-virtual {v0, v7, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 96
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v5, resultValue:Landroid/content/Intent;
    const-string v7, "appWidgetId"

    iget v8, p0, Lnet/cactii/flash2/WidgetOptionsActivity;->mAppWidgetId:I

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    const/4 v7, -0x1

    invoke-virtual {p0, v7, v5}, Lnet/cactii/flash2/WidgetOptionsActivity;->setResult(ILandroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Lnet/cactii/flash2/WidgetOptionsActivity;->finish()V

    .line 102
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lnet/cactii/flash2/WidgetOptionsActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 51
    invoke-virtual {p0}, Lnet/cactii/flash2/WidgetOptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 52
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 53
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lnet/cactii/flash2/WidgetOptionsActivity;->mAppWidgetId:I

    .line 57
    :cond_0
    invoke-virtual {p0}, Lnet/cactii/flash2/WidgetOptionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060001

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lnet/cactii/flash2/WidgetOptionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v4, 0x7f06

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lnet/cactii/flash2/WidgetOptionsActivity;->mHasBrightSetting:Z

    .line 60
    iget-boolean v2, p0, Lnet/cactii/flash2/WidgetOptionsActivity;->mHasBrightSetting:Z

    if-eqz v2, :cond_2

    .line 61
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lnet/cactii/flash2/WidgetOptionsActivity;->addPreferencesFromResource(I)V

    .line 63
    const-string v2, "widget_bright"

    invoke-virtual {p0, v2}, Lnet/cactii/flash2/WidgetOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 64
    .local v0, brightPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 68
    .end local v0           #brightPref:Landroid/preference/CheckBoxPreference;
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 57
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p0}, Lnet/cactii/flash2/WidgetOptionsActivity;->addWidget()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 106
    invoke-virtual {p0}, Lnet/cactii/flash2/WidgetOptionsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 107
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 108
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 113
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 115
    :pswitch_0
    invoke-virtual {p0}, Lnet/cactii/flash2/WidgetOptionsActivity;->addWidget()V

    .line 116
    const/4 v0, 0x1

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0009
        :pswitch_0
    .end packed-switch
.end method
