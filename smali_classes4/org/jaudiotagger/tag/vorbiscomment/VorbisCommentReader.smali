.class public Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;
.super Ljava/lang/Object;
.source "VorbisCommentReader.java"


# static fields
.field public static final FIELD_COMMENT_LENGTH_LENGTH:I = 0x4

.field public static final FIELD_USER_COMMENT_LIST_LENGTH:I = 0x4

.field public static final FIELD_VENDOR_LENGTH_LENGTH:I = 0x4

.field public static final FIELD_VENDOR_LENGTH_POS:I = 0x0

.field public static final FIELD_VENDOR_STRING_POS:I = 0x4

.field private static final JAUDIOTAGGER_MAX_COMMENT_LENGTH:I = 0x989680

.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-string v0, "org.jaudiotagger.tag.vorbiscomment.VorbisCommentReader"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read([BZLjava/nio/file/Path;)Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jaudiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    .line 86
    new-instance v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;-><init>()V

    const/4 v1, 0x4

    .line 88
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 89
    invoke-static {p1, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    invoke-static {v2}, Lorg/jaudiotagger/audio/generic/Utils;->getIntLE([B)I

    move-result v2

    .line 93
    new-array v4, v2, [B

    .line 94
    invoke-static {p1, v1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v2, 0x4

    .line 96
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v4, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->setVendor(Ljava/lang/String;)V

    .line 97
    sget-object v4, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Vendor is:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getVendor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 99
    new-array v4, v1, [B

    .line 100
    invoke-static {p1, v5, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x8

    .line 103
    invoke-static {v4}, Lorg/jaudiotagger/audio/generic/Utils;->getIntLE([B)I

    move-result v4

    .line 104
    sget-object v5, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Number of user comments:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_4

    .line 108
    new-array v6, v1, [B

    .line 109
    invoke-static {p1, v2, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x4

    .line 112
    invoke-static {v6}, Lorg/jaudiotagger/audio/generic/Utils;->getIntLE([B)I

    move-result v6

    .line 113
    sget-object v7, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Next Comment Length:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const v7, 0x989680

    .line 115
    const-string v8, ":"

    if-le v6, v7, :cond_1

    if-eqz p3, :cond_0

    .line 119
    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->VORBIS_COMMENT_LENGTH_TOO_LARGE:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 123
    :cond_0
    sget-object p3, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->VORBIS_COMMENT_LENGTH_TOO_LARGE:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 127
    :cond_1
    array-length v7, p1

    sub-int/2addr v7, v2

    if-le v6, v7, :cond_3

    if-eqz p3, :cond_2

    .line 131
    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->VORBIS_COMMENT_LENGTH_LARGE_THAN_HEADER:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    array-length v5, p1

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 135
    :cond_2
    sget-object p3, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->VORBIS_COMMENT_LENGTH_LARGE_THAN_HEADER:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_3
    new-array v7, v6, [B

    .line 142
    invoke-static {p1, v2, v7, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v6

    .line 145
    new-instance v6, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;

    invoke-direct {v6, v7}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;-><init>([B)V

    .line 146
    sget-object v7, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Adding:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, v6}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_1
    if-eqz p2, :cond_6

    .line 154
    aget-byte p2, p1, v2

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-ne p2, p3, :cond_5

    goto :goto_2

    .line 156
    :cond_5
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->OGG_VORBIS_NO_FRAMING_BIT:Lorg/jaudiotagger/logging/ErrorMessage;

    aget-byte p1, p1, v2

    and-int/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    :goto_2
    return-object v0
.end method
