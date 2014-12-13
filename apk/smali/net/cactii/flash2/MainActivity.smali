.class public Lnet/cactii/flash2/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private mBackgroundShape:Landroid/widget/ImageView;

.field private mBright:Z

.field private mContext:Landroid/content/Context;

.field private mFullScreenScale:F

.field private mHasBrightSetting:Z

.field private mLightbulb:Landroid/widget/ImageView;

.field private mLightbulbOn:Landroid/widget/ImageView;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTorchOn:Z

.field private mWidgetProvider:Lnet/cactii/flash2/TorchWidgetProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/cactii/flash2/MainActivity;->mHasBrightSetting:Z

    .line 66
    new-instance v0, Lnet/cactii/flash2/MainActivity$1;

    invoke-direct {v0, p0}, Lnet/cactii/flash2/MainActivity$1;-><init>(Lnet/cactii/flash2/MainActivity;)V

    iput-object v0, p0, Lnet/cactii/flash2/MainActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lnet/cactii/flash2/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lnet/cactii/flash2/MainActivity;->mTorchOn:Z

    return v0
.end method

.method static synthetic access$002(Lnet/cactii/flash2/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lnet/cactii/flash2/MainActivity;->mTorchOn:Z

    return p1
.end method

.method static synthetic access$100(Lnet/cactii/flash2/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lnet/cactii/flash2/MainActivity;->onFlashOn()V

    return-void
.end method

.method static synthetic access$200(Lnet/cactii/flash2/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lnet/cactii/flash2/MainActivity;->onFlashOff()V

    return-void
.end method

.method static synthetic access$300(Lnet/cactii/flash2/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lnet/cactii/flash2/MainActivity;->mBright:Z

    return v0
.end method

.method static synthetic access$302(Lnet/cactii/flash2/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lnet/cactii/flash2/MainActivity;->mBright:Z

    return p1
.end method

.method static synthetic access$400(Lnet/cactii/flash2/MainActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private getMeasureScale()F
    .locals 8

    .prologue
    .line 250
    invoke-virtual {p0}, Lnet/cactii/flash2/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 251
    .local v4, wm:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 252
    .local v0, display:Landroid/view/Display;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 253
    .local v3, outMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 255
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v5

    .line 256
    .local v1, displayHeight:F
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v5

    .line 257
    .local v2, displayWidth:F
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, p0, Lnet/cactii/flash2/MainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x4000

    mul-float/2addr v5, v6

    return v5
.end method

.method private onFlashOff()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x12c

    const/high16 v1, 0x3f80

    .line 99
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mBackgroundShape:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lnet/cactii/flash2/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 103
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mBackgroundShape:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 108
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mLightbulbOn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private onFlashOn()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x12c

    .line 81
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mBackgroundShape:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 84
    :cond_0
    iget v0, p0, Lnet/cactii/flash2/MainActivity;->mFullScreenScale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 85
    invoke-direct {p0}, Lnet/cactii/flash2/MainActivity;->getMeasureScale()F

    move-result v0

    iput v0, p0, Lnet/cactii/flash2/MainActivity;->mFullScreenScale:F

    .line 87
    :cond_1
    invoke-virtual {p0}, Lnet/cactii/flash2/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 88
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mBackgroundShape:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lnet/cactii/flash2/MainActivity;->mFullScreenScale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lnet/cactii/flash2/MainActivity;->mFullScreenScale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 93
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mLightbulbOn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private openAboutDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 213
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 214
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/high16 v2, 0x7f03

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 216
    .local v1, view:Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070004

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070005

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 221
    return-void
.end method

.method private openBrightDialog()V
    .locals 5

    .prologue
    .line 224
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 225
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 227
    .local v1, view:Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070009

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07000b

    new-instance v4, Lnet/cactii/flash2/MainActivity$4;

    invoke-direct {v4, p0}, Lnet/cactii/flash2/MainActivity$4;-><init>(Lnet/cactii/flash2/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07000c

    new-instance v4, Lnet/cactii/flash2/MainActivity$3;

    invoke-direct {v4, p0}, Lnet/cactii/flash2/MainActivity$3;-><init>(Lnet/cactii/flash2/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 243
    return-void
.end method

.method private updateWidget()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mWidgetProvider:Lnet/cactii/flash2/TorchWidgetProvider;

    invoke-virtual {v0, p0}, Lnet/cactii/flash2/TorchWidgetProvider;->updateAllStates(Landroid/content/Context;)V

    .line 247
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 209
    invoke-direct {p0}, Lnet/cactii/flash2/MainActivity;->getMeasureScale()F

    move-result v0

    iput v0, p0, Lnet/cactii/flash2/MainActivity;->mFullScreenScale:F

    .line 210
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    iput-object p0, p0, Lnet/cactii/flash2/MainActivity;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p0}, Lnet/cactii/flash2/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 119
    invoke-virtual {p0}, Lnet/cactii/flash2/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 121
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lnet/cactii/flash2/MainActivity;->setContentView(I)V

    .line 123
    const/high16 v0, 0x7f0c

    invoke-virtual {p0, v0}, Lnet/cactii/flash2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/cactii/flash2/MainActivity;->mBackgroundShape:Landroid/widget/ImageView;

    .line 124
    const v0, 0x7f0c0001

    invoke-virtual {p0, v0}, Lnet/cactii/flash2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/cactii/flash2/MainActivity;->mLightbulb:Landroid/widget/ImageView;

    .line 125
    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lnet/cactii/flash2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/cactii/flash2/MainActivity;->mLightbulbOn:Landroid/widget/ImageView;

    .line 127
    iput-boolean v1, p0, Lnet/cactii/flash2/MainActivity;->mTorchOn:Z

    .line 129
    invoke-static {}, Lnet/cactii/flash2/TorchWidgetProvider;->getInstance()Lnet/cactii/flash2/TorchWidgetProvider;

    move-result-object v0

    iput-object v0, p0, Lnet/cactii/flash2/MainActivity;->mWidgetProvider:Lnet/cactii/flash2/TorchWidgetProvider;

    .line 132
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/cactii/flash2/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 133
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "bright"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lnet/cactii/flash2/MainActivity;->mBright:Z

    .line 135
    invoke-virtual {p0}, Lnet/cactii/flash2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/cactii/flash2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f06

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lnet/cactii/flash2/MainActivity;->mHasBrightSetting:Z

    .line 138
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mLightbulb:Landroid/widget/ImageView;

    new-instance v1, Lnet/cactii/flash2/MainActivity$2;

    invoke-direct {v1, p0}, Lnet/cactii/flash2/MainActivity$2;-><init>(Lnet/cactii/flash2/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void

    :cond_0
    move v0, v1

    .line 135
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 171
    invoke-virtual {p0}, Lnet/cactii/flash2/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f0b

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 173
    const v1, 0x7f0c0008

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 174
    .local v0, brightness:Landroid/view/MenuItem;
    iget-boolean v1, p0, Lnet/cactii/flash2/MainActivity;->mHasBrightSetting:Z

    if-eqz v1, :cond_0

    .line 175
    iget-boolean v1, p0, Lnet/cactii/flash2/MainActivity;->mBright:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 179
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 177
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lnet/cactii/flash2/MainActivity;->updateWidget()V

    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 160
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "menuItem"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 184
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f0c0007

    if-ne v3, v4, :cond_0

    .line 185
    invoke-direct {p0}, Lnet/cactii/flash2/MainActivity;->openAboutDialog()V

    .line 203
    :goto_0
    return v1

    .line 187
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f0c0008

    if-ne v3, v4, :cond_5

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, isChecked:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 190
    if-eqz v0, :cond_3

    iget-object v3, p0, Lnet/cactii/flash2/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "bright"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 192
    if-nez v0, :cond_1

    move v2, v1

    :cond_1
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 193
    invoke-direct {p0}, Lnet/cactii/flash2/MainActivity;->openBrightDialog()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 189
    goto :goto_1

    .line 194
    :cond_3
    if-eqz v0, :cond_4

    .line 195
    iput-boolean v1, p0, Lnet/cactii/flash2/MainActivity;->mBright:Z

    .line 196
    iget-object v2, p0, Lnet/cactii/flash2/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "bright"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 198
    :cond_4
    iput-boolean v2, p0, Lnet/cactii/flash2/MainActivity;->mBright:Z

    .line 199
    iget-object v3, p0, Lnet/cactii/flash2/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "bright"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .end local v0           #isChecked:Z
    :cond_5
    move v1, v2

    .line 203
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Lnet/cactii/flash2/MainActivity;->updateWidget()V

    .line 152
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lnet/cactii/flash2/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 154
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 164
    invoke-direct {p0}, Lnet/cactii/flash2/MainActivity;->updateWidget()V

    .line 165
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "net.cactii.flash2.TORCH_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lnet/cactii/flash2/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 167
    return-void
.end method
