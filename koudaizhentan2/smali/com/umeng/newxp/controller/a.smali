.class public Lcom/umeng/newxp/controller/a;
.super Ljava/lang/Object;
.source "AdIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/controller/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/umeng/newxp/Promoter;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    .line 19
    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    return v0
.end method

.method public a(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/controller/a$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/umeng/newxp/controller/a;->b()I

    move-result v0

    if-eqz v0, :cond_0

    if-gtz p1, :cond_2

    .line 81
    :cond_0
    const/4 v0, 0x0

    .line 86
    :cond_1
    return-object v0

    .line 82
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/umeng/newxp/controller/a;->e()Lcom/umeng/newxp/controller/a$a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public b(I)Lcom/umeng/newxp/Promoter;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    .line 100
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/umeng/newxp/Promoter;
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/umeng/newxp/controller/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/umeng/newxp/controller/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/umeng/newxp/controller/a;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/umeng/newxp/Promoter;
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/umeng/newxp/controller/a;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    .line 62
    :cond_0
    iget v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    invoke-virtual {p0}, Lcom/umeng/newxp/controller/a;->b()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    .line 63
    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/umeng/newxp/controller/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/umeng/newxp/controller/a;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    goto :goto_0
.end method

.method public e()Lcom/umeng/newxp/controller/a$a;
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/umeng/newxp/controller/a;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    .line 71
    :cond_0
    iget v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    invoke-virtual {p0}, Lcom/umeng/newxp/controller/a;->b()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    .line 72
    new-instance v1, Lcom/umeng/newxp/controller/a$a;

    .line 73
    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    iget v2, p0, Lcom/umeng/newxp/controller/a;->b:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    iget v2, p0, Lcom/umeng/newxp/controller/a;->b:I

    .line 72
    invoke-direct {v1, v0, v2}, Lcom/umeng/newxp/controller/a$a;-><init>(Lcom/umeng/newxp/Promoter;I)V

    .line 74
    iget v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    move-object v0, v1

    .line 75
    goto :goto_0
.end method

.method public f()Lcom/umeng/newxp/Promoter;
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    invoke-virtual {p0}, Lcom/umeng/newxp/controller/a;->b()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/umeng/newxp/controller/a;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    iget-object v1, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 39
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/umeng/newxp/controller/a;->c()Lcom/umeng/newxp/Promoter;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    invoke-virtual {p0}, Lcom/umeng/newxp/controller/a;->b()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/umeng/newxp/controller/a;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 56
    :cond_0
    return-void
.end method
