.class Lcom/umeng/update/g;
.super Ljava/lang/Object;
.source "UpdateInternal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/update/f;

.field private final synthetic b:I

.field private final synthetic c:[I

.field private final synthetic d:I

.field private final synthetic e:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/umeng/update/f;I[IILandroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/update/g;->a:Lcom/umeng/update/f;

    iput p2, p0, Lcom/umeng/update/g;->b:I

    iput-object p3, p0, Lcom/umeng/update/g;->c:[I

    iput p4, p0, Lcom/umeng/update/g;->d:I

    iput-object p5, p0, Lcom/umeng/update/g;->e:Landroid/app/Dialog;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    iget v0, p0, Lcom/umeng/update/g;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 157
    iget-object v0, p0, Lcom/umeng/update/g;->c:[I

    const/4 v1, 0x5

    aput v1, v0, v2

    .line 161
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/umeng/update/g;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 162
    return-void

    .line 158
    :cond_1
    iget v0, p0, Lcom/umeng/update/g;->d:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/umeng/update/g;->c:[I

    const/4 v1, 0x7

    aput v1, v0, v2

    goto :goto_0
.end method
