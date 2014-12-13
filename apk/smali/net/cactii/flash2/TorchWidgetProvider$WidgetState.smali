.class final enum Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;
.super Ljava/lang/Enum;
.source "TorchWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/cactii/flash2/TorchWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WidgetState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;

.field public static final enum OFF:Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;

.field public static final enum ON:Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;


# instance fields
.field private final mDrawImgRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;

    const-string v1, "OFF"

    const v2, 0x7f020002

    invoke-direct {v0, v1, v3, v2}, Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;->OFF:Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;

    .line 46
    new-instance v0, Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;

    const-string v1, "ON"

    const v2, 0x7f020004

    invoke-direct {v0, v1, v4, v2}, Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;->ON:Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;

    sget-object v1, Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;->OFF:Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;

    aput-object v1, v0, v3

    sget-object v1, Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;->ON:Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;

    aput-object v1, v0, v4

    sput-object v0, Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;->$VALUES:[Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "drawImgRes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;->mDrawImgRes:I

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;
    .locals 1
    .parameter "name"

    .prologue
    .line 44
    const-class v0, Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;

    return-object v0
.end method

.method public static values()[Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;->$VALUES:[Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;

    invoke-virtual {v0}, [Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;

    return-object v0
.end method


# virtual methods
.method public getImgDrawable()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lnet/cactii/flash2/TorchWidgetProvider$WidgetState;->mDrawImgRes:I

    return v0
.end method
