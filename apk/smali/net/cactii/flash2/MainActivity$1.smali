.class Lnet/cactii/flash2/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/cactii/flash2/MainActivity;
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
    .line 66
    iput-object p1, p0, Lnet/cactii/flash2/MainActivity$1;->this$0:Lnet/cactii/flash2/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "net.cactii.flash2.TORCH_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity$1;->this$0:Lnet/cactii/flash2/MainActivity;

    const-string v2, "state"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    #setter for: Lnet/cactii/flash2/MainActivity;->mTorchOn:Z
    invoke-static {v1, v0}, Lnet/cactii/flash2/MainActivity;->access$002(Lnet/cactii/flash2/MainActivity;Z)Z

    .line 71
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity$1;->this$0:Lnet/cactii/flash2/MainActivity;

    #getter for: Lnet/cactii/flash2/MainActivity;->mTorchOn:Z
    invoke-static {v0}, Lnet/cactii/flash2/MainActivity;->access$000(Lnet/cactii/flash2/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity$1;->this$0:Lnet/cactii/flash2/MainActivity;

    #calls: Lnet/cactii/flash2/MainActivity;->onFlashOn()V
    invoke-static {v0}, Lnet/cactii/flash2/MainActivity;->access$100(Lnet/cactii/flash2/MainActivity;)V

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 74
    :cond_2
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity$1;->this$0:Lnet/cactii/flash2/MainActivity;

    #calls: Lnet/cactii/flash2/MainActivity;->onFlashOff()V
    invoke-static {v0}, Lnet/cactii/flash2/MainActivity;->access$200(Lnet/cactii/flash2/MainActivity;)V

    goto :goto_0
.end method
