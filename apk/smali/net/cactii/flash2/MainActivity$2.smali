.class Lnet/cactii/flash2/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/cactii/flash2/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/cactii/flash2/MainActivity;


# direct methods
.method constructor <init>(Lnet/cactii/flash2/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lnet/cactii/flash2/MainActivity$2;->this$0:Lnet/cactii/flash2/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.cactii.flash2.TOGGLE_FLASHLIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bright"

    iget-object v2, p0, Lnet/cactii/flash2/MainActivity$2;->this$0:Lnet/cactii/flash2/MainActivity;

    #getter for: Lnet/cactii/flash2/MainActivity;->mBright:Z
    invoke-static {v2}, Lnet/cactii/flash2/MainActivity;->access$300(Lnet/cactii/flash2/MainActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity$2;->this$0:Lnet/cactii/flash2/MainActivity;

    invoke-virtual {v1, v0}, Lnet/cactii/flash2/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    return-void
.end method
