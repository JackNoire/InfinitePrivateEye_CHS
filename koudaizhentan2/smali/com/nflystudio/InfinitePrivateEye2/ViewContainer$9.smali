.class Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$9;
.super Ljava/lang/Object;
.source "ViewContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->regListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;


# direct methods
.method constructor <init>(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$9;->this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$9;->this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    invoke-static {v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->access$16(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V

    .line 355
    return-void
.end method
