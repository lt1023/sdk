.class public Landroidx/media2/widget/Cea708CCParser$CaptionEvent;
.super Ljava/lang/Object;
.source "Cea708CCParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionEvent"
.end annotation


# instance fields
.field public final obj:Ljava/lang/Object;

.field public final type:I


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    iput p1, p0, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;->type:I

    .line 772
    iput-object p2, p0, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    .line 773
    return-void
.end method
